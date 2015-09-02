<?PHP

require_once('api/Simpla.php');

############################################
# Class Properties displays a list of product parameters
############################################
class UsersAdmin extends Simpla
{
	function fetch()
	{

		if($this->request->method('post'))
		{
			// Действия с выбранными
			$ids = $this->request->post('check');
			if(is_array($ids))
			switch($this->request->post('action'))
			{
			    case 'disable':
			    {
			    	foreach($ids as $id)
						$this->users->update_user($id, array('enabled'=>0));
					break;
			    }
			    case 'enable':
			    {
			    	foreach($ids as $id)
						$this->users->update_user($id, array('enabled'=>1));
			        break;
			    }
			    case 'delete':
			    {
			    	foreach($ids as $id)
						$this->users->delete_user($id);
			        break;
			    }
			}
		}


		foreach($this->users->get_groups() as $g)
			$groups[$g->id] = $g;


		$group = null;
		$filter = array();
		$filter['page'] = max(1, $this->request->get('page', 'integer'));
		$filter['limit'] = 20;

		$group_id = $this->request->get('group_id', 'integer');
		if($group_id)
		{
			$group = $this->users->get_group($group_id);
			$filter['group_id'] = $group->id;
		}

		// Поиск
		$keyword = $this->request->get('keyword', 'string');
		if(!empty($keyword))
		{
			$filter['keyword'] = $keyword;
			$this->design->assign('keyword', $keyword);
		}

		// Сортировка пользователей, сохраняем в сессии, чтобы текущая сортировка не сбрасывалась
		if($sort = $this->request->get('sort', 'string'))
			$_SESSION['users_admin_sort'] = $sort;
		if (!empty($_SESSION['users_admin_sort']))
			$filter['sort'] = $_SESSION['users_admin_sort'];
		else
			$filter['sort'] = 'name';
		$this->design->assign('sort', $filter['sort']);

		// Фильтр по городам
		$this->design->assign('gorod', $this->request->get('gorod', 'string'));

		// Фильтр по менеджерам
		$this->design->assign('manager', $this->request->get('manager', 'string'));

		// Фильтр по категориям
		$this->design->assign('category', $this->request->get('category', 'string'));

		$users_count = $this->users->count_users($filter);
		// Показать все страницы сразу
		if($this->request->get('page') == 'all')
			$filter['limit'] = $users_count;

		// Категории фильтр
			$filter['category'] = $this->request->get('category');

		// Менеджеры фильтр
			$filter['manager'] = $this->request->get('manager');

		// Города фильтр
			$filter['gorod'] = $this->request->get('gorod');

		$users = $this->users->get_users($filter);

		$filter_all = array();

		$users_all = $this->users->get_users($filter_all);


		//Ajax фильтрация
		//******************************************************************************************************

		//фильтр по группам
		$filter_groups = array();

			foreach($this->users->get_groups() as $g)
			{
				$filter_groups[] = $g->name;
			}

		//уникализировать многомерный массив, удалив одинаковые значения (дубли), на PHP.
		$filter_groups = array_map("unserialize", array_unique(array_map("serialize", $filter_groups)));

		//убираем пустые значения из массива
		$filter_groups = array_diff($filter_groups, array(''));

		//фильтр по городам
		$filter_managers = array();

			foreach($users_all as &$user)
			{
				$filter_managers[] = $user->manager;
			}

		//уникализировать многомерный массив, удалив одинаковые значения (дубли), на PHP.
		$filter_managers = array_map("unserialize", array_unique(array_map("serialize", $filter_managers)));

		//убираем пустые значения из массива
		$filter_managers = array_diff($filter_managers, array(''));

		//фильтр по городам
		$filter_citys = array();

			foreach($users_all as &$user)
			{
				$filter_citys[] = $user->gorod;
			}

		//уникализировать многомерный массив, удалив одинаковые значения (дубли), на PHP.
		$filter_citys = array_map("unserialize", array_unique(array_map("serialize", $filter_citys)));

		//убираем пустые значения из массива
		$filter_citys = array_diff($filter_citys, array(''));


		//Ajax фильтрация @**************************************************************************************

		//передем данные в json в шаблон
		//echo json_encode($users);
		//echo "string";

		$this->design->assign('json_users', json_encode($users));

		foreach ($this->users->get_user_docs('ruslan@rosstok.ru') as $doc)
			$docs[$doc->id] = $doc;

		$this->design->assign('docs', $docs);

		$this->design->assign('pages_count', ceil($users_count/$filter['limit']));
		$this->design->assign('current_page', $filter['page']);
		$this->design->assign('groups', $groups);
		$this->design->assign('group', $group);
		$this->design->assign('users', $users);
		$this->design->assign('filter_groups', $filter_groups);
		$this->design->assign('filter_citys', $filter_citys);
		$this->design->assign('filter_managers', $filter_managers);
		$this->design->assign('users_count', $users_count);
		return $this->body = $this->design->fetch('users.tpl');
	}
}