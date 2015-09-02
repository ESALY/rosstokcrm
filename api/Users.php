<?php

/**
 * Simpla CMS
 *
 * @copyright	2011 Denis Pikusov
 * @link		http://simplacms.ru
 * @author		Denis Pikusov
 *
 */

require_once('Simpla.php');

class Users extends Simpla
{
	// осторожно, при изменении соли испортятся текущие пароли пользователей
	private $salt = '8e86a279d6e182b3c811c559e6b15484';

	//Получаем корзину покупателя

		function get_user_basket($filter = array())
	{

		$userid_filter = '';
		$basket_filter = '';

		if(!empty($filter['userid']))
			$userid_filter = $this->db->placehold('AND ub.userid = ?@', (array)$filter['userid']);

		if(!empty($filter['basket']))
			$basket_filter = $this->db->placehold('AND ub.basket = ?@', (array)$filter['basket']);

		// Выбираем корзину покупателя
	$query = $this->db->placehold("SELECT ub.id, ub.productid, ub.price, ub.amount, ub.userid, ub.basket, ub.name, ub.vid, ub.timestamp FROM __uprice_basket AS ub WHERE 1 $userid_filter $basket_filter ORDER BY ub.id");
	$this->db->query($query);

		return $this->db->results();

	}

	//добавляем товары в корзину покупателя

	public function add_user_basket($userbasket)
	{

		$userbasket = (array)$userbasket;
		$query = $this->db->placehold("INSERT INTO  __uprice_basket SET ?%", $userbasket);
		$this->db->query($query);
		return $this->db->results();
	}

	//очищаем корзину

		public function delete_user_basket($userid, $vid)
	{
		$query = $this->db->placehold("DELETE FROM __uprice_basket WHERE userid=? AND vid=? LIMIT 1", intval($userid), intval($vid));
		$this->db->query($query);
	}


	//получаем прайс

	function get_uprice($filter = array())
	{
		$id_filter = '';
		$ssupplierid_filter = '';
		$userid_filter = '';
		$rowtype_filter = '';
		$status_filter = '';
		$productid_filter = '';
		$limit_filter = '';


		if(!empty($filter['id']))
			$id_filter = $this->db->placehold('AND up.id = ?@', (array)$filter['id']);

		if(!empty($filter['ssupplierid']))
			$ssupplierid_filter = $this->db->placehold('AND up.ssupplierid = ?@', (array)$filter['ssupplierid']);

		if(!empty($filter['userid']))
			$userid_filter = $this->db->placehold('AND up.userid = ?@', (array)$filter['userid']);

		if(!empty($filter['rowtype']))
			$rowtype_filter = $this->db->placehold('AND up.rowtype = ?@', (array)$filter['rowtype']);

		if(!empty($filter['status']))
			$status_filter = $this->db->placehold('AND up.status = ?@', (array)$filter['status']);

		if(!empty($filter['productid']))
			$productid_filter = $this->db->placehold('AND up.productid = ?@', (array)$filter['productid']);


		// Выбираем группы
	$query = $this->db->placehold("SELECT * FROM __uprice AS up WHERE 1 $id_filter $ssupplierid_filter $userid_filter $rowtype_filter $status_filter $productid_filter ORDER BY up.date DESC");
	$this->db->query($query);
		//echo $query;
		return $this->db->results();
	}

	//Получаем товары и фильтром

		function get_uprice_products($filter = array())
	{

		$userid_filter = '';
		$rowtype_filter = '';
		$status_filter = '';
		$isupplier_filter = '';
		$user_filter = '';
		$sort = 'p.name ASC';

		if(!empty($filter['userid']))
			$userid_filter = $this->db->placehold('AND up.userid = ?@', (array)$filter['userid']);


		if(!empty($filter['rowtype']))
			$rowtype_filter = $this->db->placehold('AND up.rowtype = ?@', (array)$filter['rowtype']);

		if(!empty($filter['status']))
			$status_filter = $this->db->placehold('AND up.status = ?@', (array)$filter['status']);

		if(!empty($filter['isupplier']))
			$isupplier_filter = $this->db->placehold('AND up.isupplier = ?@', (array)$filter['isupplier']);

		if(!empty($filter['user']))
			$user_filter = $this->db->placehold('AND up.userid = ?@', (array)$filter['user']);


		// Выбираем группы
	$query = $this->db->placehold("SELECT * FROM __uprice AS up LEFT JOIN __products p ON up.productid=p.id WHERE 1 $userid_filter $rowtype_filter $status_filter $isupplier_filter $user_filter ORDER BY $sort");


	$this->db->query($query);
		//echo $query;
		return $this->db->results();
	}

	//добавляем прайс

	public function add_uprice($uprice)
	{

		$uprice = (array)$uprice;
		$query = $this->db->placehold("INSERT INTO  __uprice SET ?%", $uprice);
		$this->db->query($query);
		return $this->db->results();
	}

	//обновляем прайс

		public function update_uprice($id, $uprice)
	{
		$uprice = (array)$uprice;

		$query = $this->db->placehold("UPDATE __uprice SET ?% WHERE id=? LIMIT 1", $uprice, intval($id));
		$this->db->query($query);
		return $id;
	}


	//Удаляем значение uprice

	public function delete_uprice($userid, $productid, $rowtype)
	{
		$query = $this->db->placehold("DELETE FROM __uprice WHERE userid=? AND productid=? AND rowtype=? LIMIT 1000", intval($userid), intval($productid), intval($rowtype));
		$this->db->query($query);
	}

	//Подсчет строк в uprice

		function count_uprice($filter = array())
	{
		$group_id_filter = '';
		$userid_filter = '';
		$rowtype_filter = '';
		$status_filter = '';
		$productid_filter = '';
		$isupplier_filter = '';
		$user_filter = '';

		if(!empty($filter['userid']))
			$userid_filter = $this->db->placehold('AND up.userid = ?@', (array)$filter['userid']);

		if(!empty($filter['rowtype']))
			$rowtype_filter = $this->db->placehold('AND up.rowtype = ?@', (array)$filter['rowtype']);

		if(!empty($filter['status']))
			$status_filter = $this->db->placehold('AND up.status = ?@', (array)$filter['status']);

		if(!empty($filter['productid']))
			$productid_filter = $this->db->placehold('AND up.productid = ?@', (array)$filter['productid']);

		if(!empty($filter['isupplier']))
			$isupplier_filter = $this->db->placehold('AND up.isupplier = ?@', (array)$filter['isupplier']);

		if(!empty($filter['user']))
			$user_filter = $this->db->placehold('AND up.userid = ?@', (array)$filter['user']);

		// Выбираем пользователей
		$query = $this->db->placehold("SELECT count(*) as count FROM __uprice up WHERE 1 $userid_filter $rowtype_filter $status_filter $productid_filter $isupplier_filter $user_filter ORDER BY up.date");
		$this->db->query($query);
		return $this->db->result('count');
	}

	//Получаем пользователей


	function get_users($filter = array())
	{
		$limit = 1000;
		$page = 1;
		$group_id_filter = '';
		$keyword_filter = '';

		if(isset($filter['limit']))
			$limit = max(1, intval($filter['limit']));

		if(isset($filter['page']))
			$page = max(1, intval($filter['page']));

		if(isset($filter['group_id']))
			$group_id_filter = $this->db->placehold('AND u.group_id in(?@)', (array)$filter['group_id']);

		if(isset($filter['category']))
			$category_filter = $this->db->placehold('AND u.group_id in(?@)', (array)$filter['category']);

		if(isset($filter['manager']))
			$manager_filter = $this->db->placehold('AND u.manager in(?@)', (array)$filter['manager']);

		if(isset($filter['gorod']))
			$gorod_filter = $this->db->placehold('AND u.gorod in(?@)', (array)$filter['gorod']);

		if(isset($filter['keyword']))
		{
			$keywords = explode(' ', $filter['keyword']);
			foreach($keywords as $keyword)
				$keyword_filter .= $this->db->placehold('AND (u.name LIKE "%'.$this->db->escape(trim($keyword)).'%" OR u.email LIKE "%'.$this->db->escape(trim($keyword)).'%"  OR u.last_ip LIKE "%'.$this->db->escape(trim($keyword)).'%")');
		}

		$order = 'u.name';
		if(!empty($filter['sort']))
			switch ($filter['sort'])
			{
				case 'date':
				$order = 'u.created DESC';
				break;
				case 'name':
				$order = 'u.name';
				break;
			}


		$sql_limit = $this->db->placehold(' LIMIT ?, ? ', ($page-1)*$limit, $limit);
		// Выбираем пользователей
		$query = $this->db->placehold("SELECT u.id, u.email, u.manager, u.password, u.name, u.group_id, u.enabled, u.last_ip, u.rukovoditeltel,  u.snabtel, u.created, u.gorod, u.comment, g.discount, g.name as group_name FROM __users u
		                                LEFT JOIN __groups g ON u.group_id=g.id
										WHERE 1 $group_id_filter $keyword_filter $manager_filter $gorod_filter $category_filter ORDER BY $order $sql_limit");
		$this->db->query($query);
		return $this->db->results();
	}

	function count_users($filter = array())
	{
		$group_id_filter = '';
		$keyword_filter = '';

		if(isset($filter['group_id']))
			$group_id_filter = $this->db->placehold('AND u.group_id in(?@)', (array)$filter['group_id']);

		if(isset($filter['keyword']))
		{
			$keywords = explode(' ', $filter['keyword']);
			foreach($keywords as $keyword)
				$keyword_filter .= $this->db->placehold('AND u.name LIKE "%'.$this->db->escape(trim($keyword)).'%" OR u.email LIKE "%'.$this->db->escape(trim($keyword)).'%"');
		}

		// Выбираем пользователей
		$query = $this->db->placehold("SELECT count(*) as count FROM __users u
		                                LEFT JOIN __groups g ON u.group_id=g.id
										WHERE 1 $group_id_filter $keyword_filter ORDER BY u.name");
		$this->db->query($query);
		return $this->db->result('count');
	}

	function get_user($id)
	{
		if(gettype($id) == 'string')
			$where = $this->db->placehold(' WHERE u.email=? ', $id);
		else
			$where = $this->db->placehold(' WHERE u.id=? ', intval($id));

		// Выбираем пользователя
		$query = $this->db->placehold("SELECT u.id, u.email, u.password, u.name, u.group_id, u.comment, u.enabled, u.last_ip, u.created, g.discount, u.rukovoditel,u.manager, u.rukovoditeltel, u.snab, u.snabtel, u.site, u.gorod, u.adress, g.name as group_name FROM __users u LEFT JOIN __groups g ON u.group_id=g.id $where LIMIT 1", $id);
		$this->db->query($query);
		$user = $this->db->result();
		if(empty($user))
			return false;
		$user->discount *= 1; // Убираем лишние нули, чтобы было 5 вместо 5.00
		return $user;
	}

	function get_user_ajax($id)

	{
		// Выбираем пользователя
		$query = $this->db->placehold("SELECT * FROM __users WHERE id=? LIMIT 1", intval($id));
		$this->db->query($query);
		return $this->db->results();
	}

	public function add_user($user)
	{
		$user = (array)$user;
		$query = $this->db->placehold("INSERT INTO __users SET ?%", $user);
		$this->db->query($query);
		return $this->db->results();
	}

	//прайс


	public function update_user($id, $user)
	{
		$user = (array)$user;
		if(isset($user['password']))
			$user['password'] = md5($this->salt.$user['password'].md5($user['password']));
		$query = $this->db->placehold("UPDATE __users SET ?% WHERE id=? LIMIT 1", $user, intval($id));
		$this->db->query($query);
		return $id;
	}

	/*
	*
	* Удалить пользователя
	* @param $post
	*
	*/
	public function delete_user($id)
	{
		if(!empty($id))
		{
			$query = $this->db->placehold("UPDATE __orders SET user_id=NULL WHERE id=? LIMIT 1", intval($id));
			$this->db->query($query);

			$query = $this->db->placehold("DELETE FROM __users WHERE id=? LIMIT 1", intval($id));
			if($this->db->query($query))
				return true;
		}
		return false;
	}

		// Функция возвращает id категорий для заданного покупателя
	public function get_user_categories($user_id)
	{
		$query = $this->db->placehold("SELECT user_id, category_id, position FROM __users_categories WHERE user_id in(?@) ORDER BY position", (array)$user_id);
		$this->db->query($query);
		return $this->db->results();
	}

		// Добавить категорию к заданному покупателю
	public function add_user_category($user_id, $category_id, $position=0)
	{
		$query = $this->db->placehold("INSERT IGNORE INTO __users_categories SET user_id=?, category_id=?, position=?", $user_id, $category_id, $position);
		$this->db->query($query);
	}

	// Удалить категорию заданного товара
	public function delete_user_category($user_id, $category_id)
	{
		$query = $this->db->placehold("DELETE FROM __users_categories WHERE user_id=? AND category_id=? LIMIT 1", intval($user_id), intval($category_id));
		$this->db->query($query);
	}

	function get_groups()
	{
		// Выбираем группы
		$query = $this->db->placehold("SELECT g.id, g.name, g.discount FROM __groups AS g ORDER BY g.discount");
		$this->db->query($query);
		return $this->db->results();
	}

	function get_group($id)
	{
		// Выбираем группу
		$query = $this->db->placehold("SELECT * FROM __groups WHERE id=? LIMIT 1", $id);
		$this->db->query($query);
		$group = $this->db->result();

		return $group;
	}


	public function add_group($group)
	{
		$query = $this->db->placehold("INSERT INTO __groups SET ?%", $group);
		$this->db->query($query);
		return $this->db->insert_id();
	}

	public function update_group($id, $group)
	{
		$query = $this->db->placehold("UPDATE __groups SET ?% WHERE id=? LIMIT 1", $group, intval($id));
		$this->db->query($query);
		return $id;
	}

	public function delete_group($id)
	{
		if(!empty($id))
		{
			$query = $this->db->placehold("UPDATE __users SET group_id=NULL WHERE group_id=? LIMIT 1", intval($id));
			$this->db->query($query);

			$query = $this->db->placehold("DELETE FROM __groups WHERE id=? LIMIT 1", intval($id));
			if($this->db->query($query))
				return true;
		}
		return false;
	}

	public function check_password($email, $password)
	{
		$encpassword = md5($this->salt.$password.md5($password));
		$query = $this->db->placehold("SELECT id FROM __users WHERE email=? AND password=? LIMIT 1", $email, $encpassword);
		$this->db->query($query);
		if($id = $this->db->result('id'))
			return $id;
		return false;
	}


	//документы*************************************************************************

	function get_user_docs($user)

	{
		// Выбираем пользователя
		$query = $this->db->placehold("SELECT * FROM __docs WHERE user=? LIMIT 100", intval($user));
		$this->db->query($query);
		return $this->db->results();
	}

		function get_user_doc($id)

	{
		// Выбираем пользователя
		$query = $this->db->placehold("SELECT * FROM __docs WHERE id=? LIMIT 1", intval($id));
		$this->db->query($query);
		$doc = $this->db->result();
		return $doc;
	}

		public function update_user_doc($id, $doc)
	{
		$doc = (array)$doc;

		$query = $this->db->placehold("UPDATE __docs SET ?% WHERE id=?", $doc, intval($id));
		if($this->db->query($query))
			return $id;
		else
			return false;
	}

		public function add_user_doc($doc)
	{

		$uprice = (array)$uprice;
		$query = $this->db->placehold("INSERT INTO  __docs SET ?%", $doc);
		$this->db->query($query);
		return $this->db->results();
	}


}