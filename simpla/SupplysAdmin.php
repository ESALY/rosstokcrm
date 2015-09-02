<?PHP
require_once('api/Simpla.php');

class SupplysAdmin extends Simpla
{
	public function fetch()
	{
		$order = new stdClass;
		$user = new stdClass;
		if(!empty($_POST['user_info']))
			{
			$user->id = $this->request->post('id', 'integer');
			$user->enabled = $this->request->post('enabled');
			$user->name = $this->request->post('name');
			$user->email = $this->request->post('email');
			$user->password = $this->request->post('password');

			//@ new table SQL

            $user->rukovoditel = $this->request->post('rukovoditel');
            $user->rukovoditeltel = $this->request->post('rukovoditeltel');
            $user->snab = $this->request->post('snab');
            $user->snabtel = $this->request->post('snabtel');
            $user->site = $this->request->post('site');
            $user->gorod = $this->request->post('gorod');
            $user->adress = $this->request->post('adress');

			$user->group_id = $this->request->post('group_id');

			//персональные цены

			$user->productid = $this->request->post('productid');
			$user->userid = $this->request->post('userid');
			$user->uprice = $this->request->post('uprice');

			$user->id = $this->users->add_uprice(array('productid'=>$user->productid,'userid'=>$user->userid));

			## Не допустить одинаковые email пользователей.
			if(empty($user->name))
			{
				$this->design->assign('message_error', 'empty_name');
			}
			//elseif(empty($user->id))
			//{
				//$user->id = $this->users->add_user(array('name'=>$user->name,'email'=>$user->email,'rukovoditel'=>$user->rukovoditel,'rukovoditeltel'=>$user->rukovoditeltel,'snab'=>$user->snab,'snabtel'=>$user->snabtel,'site'=>$user->site,'gorod'=>$user->gorod,'adress'=>$user->adress));
				//$this->design->assign('message_success', 'Новый покупатель успешно создан!:)');
			//}
			elseif($user->id)//исправлен баг с редактированием
			{
				$user->id = $this->users->update_user($user->id, $user);
				$this->design->assign('message_success', 'updated');
   	    		$user = $this->users->get_user(intval($user->id));

			}
		}
		elseif($this->request->post('check'))
		{
			// Действия с выбранными
			$ids = $this->request->post('check');
			if(is_array($ids))
			switch($this->request->post('action'))
			{
				case 'delete':
				{
					foreach($ids as $id)
						$o = $this->orders->get_order(intval($id));
						if($o->status<3)
						{
							$this->orders->update_order($id, array('status'=>3, 'user_id'=>null));
							$this->orders->open($id);
						}
						else
							$this->orders->delete_order($id);
					break;
				}
			}
 		}

		$id = $this->request->get('id', 'integer');
		if(!empty($id))
			$user = $this->users->get_user(intval($id));

		if(!empty($user))
		{
			$this->design->assign('user', $user);

			$orders = $this->orders->get_orders(array('user_id'=>$user->id));
			$this->design->assign('orders', $orders);

		}

 	  	//test)))

 	  	// Отображение
		$filter = array();
		$filter['page'] = max(1, $this->request->get('page', 'integer'));

		$filter['limit'] = $this->settings->products_num_admin;

		// Категории
		$categories = $this->categories->get_categories_tree();
		$this->design->assign('categories', $categories);

		// Текущая категория
		$category_id = $this->request->get('category_id', 'integer');
		if($category_id && $category = $this->categories->get_category($category_id))
	  		$filter['category_id'] = $category->children;

		// Бренды категории
		$brands = $this->brands->get_brands(array('category_id'=>$category_id));
		$this->design->assign('brands', $brands);

		// Все бренды
		$all_brands = $this->brands->get_brands();
		$this->design->assign('all_brands', $all_brands);

		// Текущий бренд
		$brand_id = $this->request->get('brand_id', 'integer');
		if($brand_id && $brand = $this->brands->get_brand($brand_id))
			$filter['brand_id'] = $brand->id;

		// Текущий фильтр
		if($f = $this->request->get('filter', 'string'))
		{
			if($f == 'featured')
				$filter['featured'] = 1;
			elseif($f == 'discounted')
				$filter['discounted'] = 1;
			elseif($f == 'visible')
				$filter['visible'] = 1;
			elseif($f == 'hidden')
				$filter['visible'] = 0;
			elseif($f == 'outofstock')
				$filter['in_stock'] = 0;
			$this->design->assign('filter', $f);
		}

	// Поиск
		$keyword = $this->request->get('keyword', 'string');
		if(!empty($keyword))
		{
			$filter['keyword'] = $keyword;
			$this->design->assign('keyword', $keyword);
		}

		// Обработка действий
		if($this->request->method('post'))
		{
			// Сохранение цен и наличия
			$prices = $this->request->post('price');
			$stocks = $this->request->post('stock');

			foreach($prices as $id=>$price)
			{
				$stock = $stocks[$id];
				if($stock == '∞' || $stock == '')
					$stock = null;

				$this->variants->update_variant($id, array('price'=>$price, 'stock'=>$stock));
			}

			// Сортировка
			$positions = $this->request->post('positions');
				$ids = array_keys($positions);
			sort($positions);
			$positions = array_reverse($positions);
			foreach($positions as $i=>$position)
				$this->products->update_product($ids[$i], array('position'=>$position));


			// Действия с выбранными
			$ids = $this->request->post('check');
			if(!empty($ids))
			switch($this->request->post('action'))
			{
			    case 'disable':
			    {
			    	$this->products->update_product($ids, array('visible'=>0));
					break;
			    }
			    case 'enable':
			    {
			    	$this->products->update_product($ids, array('visible'=>1));
			        break;
			    }
			    case 'set_featured':
			    {
			    	$this->products->update_product($ids, array('featured'=>1));
					break;
			    }
			    case 'unset_featured':
			    {
			    	$this->products->update_product($ids, array('featured'=>0));
					break;
			    }
			    case 'set_yandex':
{
    $this->products->update_product($ids, array('to_yandex'=>1));
    break;
}
case 'unset_yandex':
{
    $this->products->update_product($ids, array('to_yandex'=>0));
    break;
}
			    case 'delete':
			    {
				    foreach($ids as $id)
						$this->products->delete_product($id);
			        break;
			    }
			    case 'duplicate':
			    {
				    foreach($ids as $id)
				    	$this->products->duplicate_product(intval($id));
			        break;
			    }
			    case 'move_to_page':
			    {

			    	$target_page = $this->request->post('target_page', 'integer');

			    	// Сразу потом откроем эту страницу
			    	$filter['page'] = $target_page;

				    // До какого товара перемещать
				    $limit = $filter['limit']*($target_page-1);
				    if($target_page > $this->request->get('page', 'integer'))
				    	$limit += count($ids)-1;
				    else
				    	$ids = array_reverse($ids, true);


					$temp_filter = $filter;
					$temp_filter['page'] = $limit+1;
					$temp_filter['limit'] = 1;
					$target_product = array_pop($this->products->get_products($temp_filter));
					$target_position = $target_product->position;

				   	// Если вылезли за последний товар - берем позицию последнего товара в качестве цели перемещения
					if($target_page > $this->request->get('page', 'integer') && !$target_position)
					{
				    	$query = $this->db->placehold("SELECT distinct p.position AS target FROM __products p LEFT JOIN __products_categories AS pc ON pc.product_id = p.id WHERE 1 $category_id_filter $brand_id_filter ORDER BY p.position DESC LIMIT 1", count($ids));
				   		$this->db->query($query);
				   		$target_position = $this->db->result('target');
					}

			    	foreach($ids as $id)
			    	{
				    	$query = $this->db->placehold("SELECT position FROM __products WHERE id=? LIMIT 1", $id);
				    	$this->db->query($query);
				    	$initial_position = $this->db->result('position');

				    	if($target_position > $initial_position)
				    		$query = $this->db->placehold("	UPDATE __products set position=position-1 WHERE position>? AND position<=?", $initial_position, $target_position);
				    	else
				    		$query = $this->db->placehold("	UPDATE __products set position=position+1 WHERE position<? AND position>=?", $initial_position, $target_position);

			    		$this->db->query($query);
			    		$query = $this->db->placehold("UPDATE __products SET __products.position = ? WHERE __products.id = ?", $target_position, $id);
			    		$this->db->query($query);
				    }
			        break;
				}
			    case 'move_to_category':
			    {
			    	$category_id = $this->request->post('target_category', 'integer');
			    	$filter['page'] = 1;
					$category = $this->categories->get_category($category_id);
	  				$filter['category_id'] = $category->children;

			    	foreach($ids as $id)
			    	{
			    		$query = $this->db->placehold("DELETE FROM __products_categories WHERE category_id=? AND product_id=? LIMIT 1", $category_id, $id);
			    		$this->db->query($query);
			    		$query = $this->db->placehold("UPDATE IGNORE __products_categories set category_id=? WHERE product_id=? ORDER BY position DESC LIMIT 1", $category_id, $id);
			    		$this->db->query($query);
			    		if($this->db->affected_rows() == 0)
							$query = $this->db->query("INSERT IGNORE INTO __products_categories set category_id=?, product_id=?", $category_id, $id);

				    }
			        break;
				}
			    case 'move_to_brand':
			    {
			    	$brand_id = $this->request->post('target_brand', 'integer');
			    	$brand = $this->brands->get_brand($brand_id);
			    	$filter['page'] = 1;
	  				$filter['brand_id'] = $brand_id;
			    	$query = $this->db->placehold("UPDATE __products set brand_id=? WHERE id in (?@)", $brand_id, $ids);
			    	$this->db->query($query);

					// Заново выберем бренды категории
					$brands = $this->brands->get_brands(array('category_id'=>$category_id));
					$this->design->assign('brands', $brands);

			        break;
				}
			}
		}

		// Отображение
		if(isset($brand))
			$this->design->assign('brand', $brand);
		if(isset($category))
			$this->design->assign('category', $category);

	  	$products_count = $this->products->count_products($filter);
		// Показать все страницы сразу
		if($this->request->get('page') == 'all')
			$filter['limit'] = $products_count;

		if($filter['limit']>0)
		  	$pages_count = ceil($products_count/$filter['limit']);
		else
		  	$pages_count = 0;
	  	//$filter['page'] = min($filter['page'], $pages_count);
	 	$this->design->assign('products_count', $products_count);
	 	$this->design->assign('pages_count', $pages_count);
	 	$this->design->assign('current_page', $filter['page']);

	 	$filter['sort'] = $this->request->get('sort');//Сортировка по имени
	 	// Сортировка товаров, сохраняем в сесси, чтобы текущая сортировка оставалась для всего сайта
		if($sort = $this->request->get('sort', 'string'))
			$_SESSION['sort'] = $sort;
		if (!empty($_SESSION['sort']))
			$filter['sort'] = $_SESSION['sort'];
		else
			$filter['sort'] = 'position';
		$this->design->assign('sort', $filter['sort']);

		$filter['limit'] = $products_count;

		//------------------------------

		////////////////////////////////////////////////////////////////////////////////////////////////////////


			// Товары

			$up_prod = array();

		    $up_products = array();
		    $up_products_names = array();
		    $up_products_ids = array();
		    $up_products_united = array();
		    $up_products_filtered = array();

		    $row_fillter = "supplys";
		    $row_status = $this->request->get('status', 'string');
		    $isupplier_fillter = $this->request->get('isupplier', 'string');
		    $user_fillter = $this->request->get('user', 'string');

		    //Выводи в шаблон текущий фильтр
		    $this->design->assign('user_filter', $this->users->get_user(intval($user_fillter)));


		    //проверка статуса
		    switch ($row_status) {
		    case "all":
		    	//echo "new";
		    $up_products = $this->users->get_uprice_products(array('rowtype'=>$row_fillter, 'status'=>''));
		    	break;
		    default:
		    	//echo "x не равен 0, 1 или 2";
		    $up_products = $this->users->get_uprice_products(array('rowtype'=>$row_fillter, 'status'=>$row_status, 'isupplier'=>$isupplier_fillter,'user'=>$user_fillter));

		    }


			for($i = 0; $i < count($up_products); ++$i) {
				$up_products_names[$i] = $up_products[$i]->name;
				$up_products_ids[$i] = $up_products[$i]->id;
			}

			$up_products_names = array_map("unserialize", array_unique(array_map("serialize", $up_products_names)));
			$up_products_ids = array_map("unserialize", array_unique(array_map("serialize", $up_products_ids)));

			$up_products_united = array_combine($up_products_ids, $up_products_names);

			foreach ($up_products_united as $id => $name) {
				$up_products_filtered[$id]->id = $id;
				$up_products_filtered[$id]->name = $name;
			}

			$this->design->assign('up_products', $up_products_filtered);

			if($this->request->post('productid', 'integer'))
			{

			}

			$row_fillter = "supplys";
		    $row_status = $this->request->get('status', 'string');
			//Счетчики

		    //Количество товаров в текущей заяке
		    $this->design->assign('up_products_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>$row_status,'isupplier'=>$isupplier_fillter,'user'=>$user_fillter)));

		    //Новые	new
		    $this->design->assign('new_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'new')));
		    //В заявке	on
		    $this->design->assign('on_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'on')));
		    //На утверждение	2
		    $this->design->assign('2_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'2')));
		    //Утверждено	3
		    $this->design->assign('3_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'3')));
		    //Заказано	4
		    $this->design->assign('4_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'4')));
		    //Отгружено у поставщика	5
		    $this->design->assign('5_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'5')));
		    //На складе	ok
		    $this->design->assign('ok_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'ok')));
		    //Отгружено покупателю	7
		    $this->design->assign('7_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'7')));
		    //Удаленные	del
		    $this->design->assign('del_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'del')));
		     //Запрос цены z
		    $this->design->assign('z_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'z')));

		    //Новые	new
		    $this->design->assign('new_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'new','user'=>$user_fillter)));
		    //В заявке	on
		    $this->design->assign('on_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'on','user'=>$user_fillter)));
		    //На утверждение	2
		    $this->design->assign('2_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'2','user'=>$user_fillter)));
		    //Утверждено	3
		    $this->design->assign('3_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'3','user'=>$user_fillter)));
		    //Заказано	4
		    $this->design->assign('4_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'4','user'=>$user_fillter)));
		    //Отгружено у поставщика	5
		    $this->design->assign('5_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'5','user'=>$user_fillter)));
		    //На складе	ok
		    $this->design->assign('ok_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'ok','user'=>$user_fillter)));
		    //Отгружено покупателю	7
		    $this->design->assign('7_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'7','user'=>$user_fillter)));
		    //Удаленные	del
		    $this->design->assign('del_count_user', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>'del','user'=>$user_fillter)));


			if($this->request->get('productid', 'integer'))
			{

			$up_productid = $this->request->get('productid', 'integer');

			$up_products_p = array();
			$up_products_p = $this->products->get_product(intval($up_productid));

			$up_products_p_images = $this->products->get_images(array('product_id'=>$up_products_p->id));
			$up_products_p->image = array_shift($up_products_p_images);

			$up_products_p_inbox = array();
		    $row_fillter = "supplys";
		    $row_status = $this->request->get('status', 'string');
		    $up_products_p_inbox = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter, 'status'=>$row_status, 'productid'=>$up_productid));

		    foreach($up_products_p_inbox as &$up_products_p_i)
			{
				$userinf = array();
				$userinf = $this->users->get_user(intval($up_products_p_i->userid));

				$up_products_p_i->user = $userinf->name;
				$up_products_p_i->manager = $userinf->manager;

				//Поставщики
				//Текущие поставщики товара

		$pruduct_suppliers = array();

		$pruduct_suppliers_array = $this->users->get_uprice(array('rowtype'=>'ssupplier', 'ssupplierid'=>$up_products_p_i->id));

			foreach($pruduct_suppliers_array as &$pruduct_supplier_array)
			{
				//Класс для поставщика
		$pruduct_supplier  = new stdClass();

		$pruduct_supplier->supplier = $pruduct_supplier_array->ssupplier;
		$pruduct_supplier->date = $pruduct_supplier_array->date;

		//Добавляем значения в массив
		$pruduct_suppliers[] = $pruduct_supplier;

			}

			//Заносим найденных поставщико в заказ
			$up_products_p_i->suppliers = $pruduct_suppliers;

			}

			// комментарии к заявке
			$up_products_p_inbox_comments = array();
			$up_products_p_inbox_comments3 = array();

			$row_fillter = "prodcomment";
			$up_products_p_inbox_comments = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			// Отбираем последние 3 комментария к заказу
			for($i = 0; $i < count($up_products_p_inbox_comments); ++$i) {
				$up_products_p_inbox_comments3[$i] = $up_products_p_inbox_comments[$i];
				 if ($i == 3) {
				 	break;
				 }
				 	//echo 7777;
			}

			$this->design->assign('up_products_comments', $up_products_p_inbox_comments3);
			$this->design->assign('up_products_p', $up_products_p);
			$this->design->assign('up_products_p_inbox', $up_products_p_inbox);

		    }

		//------------------------------

		$products = array();
		foreach($up_products as $p)
			$products[$p->id] = $p;
		    //$products[$p->uprice] = "123";

		if(!empty($products))
		{

			// Товары
			$products_ids = array_keys($products);

			foreach($products as &$product)
			{
				$product->variants = array();
				$product->images = array();
				$product->properties = array();
				$product->$categories = array();
				$product->$categories = $this->categories->get_product_categories($product->id);

				//Подсчет количества
				$row_fillter = "supplys";
				$row_status = $this->request->get('status', 'string');
				$product->icount = $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>$row_status, 'productid'=>$product->id));

				//Подсчет общего количества
				$product->summa = array();
				$row_fillter = "supplys";
				$row_status = $this->request->get('status', 'string');
				$product->summa = $this->users->get_uprice(array('rowtype'=>$row_fillter, 'status'=>$row_status, 'productid'=>$product->id));

				//Складываем числа
				$product->summ = 0;
				foreach($product->summa as &$sm)
				{
					$product->summ = $product->summ + $sm->supplys_amount;
			    }

			    //Изображение товара
			    $product->image->url = '0';

			    $images = $this->products->get_images(array('product_id'=>$product->id));
			    foreach($images as $image){
				$product->image->url = $image->filename;
				}


				//$this->design->assign('up_products_count', $this->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>$row_status)));
			}


			////////////////////////////////////////////////////////////////////////////////////////////////////////


			$variants = $this->variants->get_variants(array('product_id'=>$products_ids));

			foreach($variants as &$variant)
			{
				$products[$variant->product_id]->variants[] = $variant;

			}

			//$categories = $this->categories->get_products_categories();

			foreach($product->categories as &$cat)
			{
				//$products[$cat->product_id]->$categories[$cat->product_id] = $cat;
				echo $cat->product_id;
			}

			$images = $this->products->get_images(array('product_id'=>$products_ids));
			foreach($images as $image)
				$products[$image->product_id]->images[$image->id] = $image;
		}


		//Поставщики товара
		$suppliers = array();

		//Поставщик 1
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 1;
		$supplier->supplier = $up_products_p->supplier1;
		$supplier->prod = $up_products_p->prod1;
		$supplier->art = $up_products_p->art1;
		$supplier->price = $up_products_p->price1;
		$supplier->aprice = $up_products_p->aprice1;
		$supplier->astock = $up_products_p->astock1;
		$supplier->oprice = $up_products_p->oprice1;
		$supplier->ostock = $up_products_p->ostock1;
		$supplier->comments = $up_products_p->contacts1;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 2
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 2;
		$supplier->supplier = $up_products_p->supplier2;
		$supplier->prod = $up_products_p->prod2;
		$supplier->art = $up_products_p->art2;
		$supplier->price = $up_products_p->price2;
		$supplier->aprice = $up_products_p->aprice2;
		$supplier->astock = $up_products_p->astock2;
		$supplier->oprice = $up_products_p->oprice2;
		$supplier->ostock = $up_products_p->ostock2;
		$supplier->comments = $up_products_p->contacts2;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 3
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 3;
		$supplier->supplier = $up_products_p->supplier3;
		$supplier->prod = $up_products_p->prod3;
		$supplier->art = $up_products_p->art3;
		$supplier->price = $up_products_p->price3;
		$supplier->aprice = $up_products_p->aprice3;
		$supplier->astock = $up_products_p->astock3;
		$supplier->oprice = $up_products_p->oprice3;
		$supplier->ostock = $up_products_p->ostock3;
		$supplier->comments = $up_products_p->contacts3;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 4
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 4;
		$supplier->supplier = $up_products_p->supplier4;
		$supplier->prod = $up_products_p->prod4;
		$supplier->art = $up_products_p->art4;
		$supplier->price = $up_products_p->price4;
		$supplier->aprice = $up_products_p->aprice4;
		$supplier->astock = $up_products_p->astock4;
		$supplier->oprice = $up_products_p->oprice4;
		$supplier->ostock = $up_products_p->ostock4;
		$supplier->comments = $up_products_p->contacts4;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 5
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 5;
		$supplier->supplier = $up_products_p->supplier5;
		$supplier->prod = $up_products_p->prod5;
		$supplier->art = $up_products_p->art5;
		$supplier->price = $up_products_p->price5;
		$supplier->aprice = $up_products_p->aprice5;
		$supplier->astock = $up_products_p->astock5;
		$supplier->oprice = $up_products_p->oprice5;
		$supplier->ostock = $up_products_p->ostock5;
		$supplier->comments = $up_products_p->contacts5;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 6
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 6;
		$supplier->supplier = $up_products_p->supplier6;
		$supplier->prod = $up_products_p->prod6;
		$supplier->art = $up_products_p->art6;
		$supplier->price = $up_products_p->price6;
		$supplier->aprice = $up_products_p->aprice6;
		$supplier->astock = $up_products_p->astock6;
		$supplier->oprice = $up_products_p->oprice6;
		$supplier->ostock = $up_products_p->ostock6;
		$supplier->comments = $up_products_p->contacts6;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 7
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 7;
		$supplier->supplier = $up_products_p->supplier7;
		$supplier->prod = $up_products_p->prod7;
		$supplier->art = $up_products_p->art7;
		$supplier->price = $up_products_p->price7;
		$supplier->aprice = $up_products_p->aprice7;
		$supplier->astock = $up_products_p->astock7;
		$supplier->oprice = $up_products_p->oprice7;
		$supplier->ostock = $up_products_p->ostock7;
		$supplier->comments = $up_products_p->contacts7;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 8
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 8;
		$supplier->supplier = $up_products_p->supplier8;
		$supplier->prod = $up_products_p->prod8;
		$supplier->art = $up_products_p->art8;
		$supplier->price = $up_products_p->price8;
		$supplier->aprice = $up_products_p->aprice8;
		$supplier->astock = $up_products_p->astock8;
		$supplier->oprice = $up_products_p->oprice8;
		$supplier->ostock = $up_products_p->ostock8;
		$supplier->comments = $up_products_p->contacts8;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 9
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 9;
		$supplier->supplier = $up_products_p->supplier9;
		$supplier->prod = $up_products_p->prod9;
		$supplier->art = $up_products_p->art9;
		$supplier->price = $up_products_p->price9;
		$supplier->aprice = $up_products_p->aprice9;
		$supplier->astock = $up_products_p->astock9;
		$supplier->oprice = $up_products_p->oprice9;
		$supplier->ostock = $up_products_p->ostock9;
		$supplier->comments = $up_products_p->contacts9;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

				//Поставщик 10
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 10;
		$supplier->supplier = $up_products_p->supplier10;
		$supplier->prod = $up_products_p->prod10;
		$supplier->art = $up_products_p->art10;
		$supplier->price = $up_products_p->price10;
		$supplier->aprice = $up_products_p->aprice10;
		$supplier->astock = $up_products_p->astock10;
		$supplier->oprice = $up_products_p->oprice10;
		$supplier->ostock = $up_products_p->ostock10;
		$supplier->comments = $up_products_p->contacts10;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 11
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 11;
		$supplier->supplier = $up_products_p->supplier11;
		$supplier->prod = $up_products_p->prod11;
		$supplier->art = $up_products_p->art11;
		$supplier->price = $up_products_p->price11;
		$supplier->aprice = $up_products_p->aprice11;
		$supplier->astock = $up_products_p->astock11;
		$supplier->oprice = $up_products_p->oprice11;
		$supplier->ostock = $up_products_p->ostock11;
		$supplier->comments = $up_products_p->contacts11;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 12
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 12;
		$supplier->supplier = $up_products_p->supplier12;
		$supplier->prod = $up_products_p->prod12;
		$supplier->art = $up_products_p->art12;
		$supplier->price = $up_products_p->price12;
		$supplier->aprice = $up_products_p->aprice12;
		$supplier->astock = $up_products_p->astock12;
		$supplier->oprice = $up_products_p->oprice12;
		$supplier->ostock = $up_products_p->ostock12;
		$supplier->comments = $up_products_p->contacts12;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 13
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 13;
		$supplier->supplier = $up_products_p->supplier13;
		$supplier->prod = $up_products_p->prod13;
		$supplier->art = $up_products_p->art13;
		$supplier->price = $up_products_p->price13;
		$supplier->aprice = $up_products_p->aprice13;
		$supplier->astock = $up_products_p->astock13;
		$supplier->oprice = $up_products_p->oprice13;
		$supplier->ostock = $up_products_p->ostock13;
		$supplier->comments = $up_products_p->contacts13;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 14
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 14;
		$supplier->supplier = $up_products_p->supplier14;
		$supplier->prod = $up_products_p->prod14;
		$supplier->art = $up_products_p->art14;
		$supplier->price = $up_products_p->price14;
		$supplier->aprice = $up_products_p->aprice14;
		$supplier->astock = $up_products_p->astock14;
		$supplier->oprice = $up_products_p->oprice14;
		$supplier->ostock = $up_products_p->ostock14;
		$supplier->comments = $up_products_p->contacts14;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 15
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 15;
		$supplier->supplier = $up_products_p->supplier15;
		$supplier->prod = $up_products_p->prod15;
		$supplier->art = $up_products_p->art15;
		$supplier->price = $up_products_p->price15;
		$supplier->aprice = $up_products_p->aprice15;
		$supplier->astock = $up_products_p->astock15;
		$supplier->oprice = $up_products_p->oprice15;
		$supplier->ostock = $up_products_p->ostock15;
		$supplier->comments = $up_products_p->contacts15;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 16
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 16;
		$supplier->supplier = $up_products_p->supplier16;
		$supplier->prod = $up_products_p->prod16;
		$supplier->art = $up_products_p->art16;
		$supplier->price = $up_products_p->price16;
		$supplier->aprice = $up_products_p->aprice16;
		$supplier->astock = $up_products_p->astock16;
		$supplier->oprice = $up_products_p->oprice16;
		$supplier->ostock = $up_products_p->ostock16;
		$supplier->comments = $up_products_p->contacts16;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 17
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 17;
		$supplier->supplier = $up_products_p->supplier17;
		$supplier->prod = $up_products_p->prod17;
		$supplier->art = $up_products_p->art17;
		$supplier->price = $up_products_p->price17;
		$supplier->aprice = $up_products_p->aprice17;
		$supplier->astock = $up_products_p->astock17;
		$supplier->oprice = $up_products_p->oprice17;
		$supplier->ostock = $up_products_p->ostock17;
		$supplier->comments = $up_products_p->contacts17;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 18
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 18;
		$supplier->supplier = $up_products_p->supplier18;
		$supplier->prod = $up_products_p->prod18;
		$supplier->art = $up_products_p->art18;
		$supplier->price = $up_products_p->price18;
		$supplier->aprice = $up_products_p->aprice18;
		$supplier->astock = $up_products_p->astock18;
		$supplier->oprice = $up_products_p->oprice18;
		$supplier->ostock = $up_products_p->ostock18;
		$supplier->comments = $up_products_p->contacts18;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 19
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 19;
		$supplier->supplier = $up_products_p->supplier19;
		$supplier->prod = $up_products_p->prod19;
		$supplier->art = $up_products_p->art19;
		$supplier->price = $up_products_p->price19;
		$supplier->aprice = $up_products_p->aprice19;
		$supplier->astock = $up_products_p->astock19;
		$supplier->oprice = $up_products_p->oprice19;
		$supplier->ostock = $up_products_p->ostock19;
		$supplier->comments = $up_products_p->contacts19;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

			//Поставщик 20
		//Класс для поставщика
		$supplier   = new stdClass();

		//Добавляем поставщиков
		$supplier->i = 20;
		$supplier->supplier = $up_products_p->supplier20;
		$supplier->prod = $up_products_p->prod20;
		$supplier->art = $up_products_p->art20;
		$supplier->price = $up_products_p->price20;
		$supplier->aprice = $up_products_p->aprice20;
		$supplier->astock = $up_products_p->astock20;
		$supplier->oprice = $up_products_p->oprice20;
		$supplier->ostock = $up_products_p->ostock20;
		$supplier->comments = $up_products_p->contacts20;
		$supplier->history = 'history';
		//Добавляем значения в массив
		$suppliers[] = $supplier;

		//Применяем дизайн
		$this->design->assign('suppliers', $suppliers);

		//Поставщики товара@


		//текущий менеджер
		$login = $this->request->get('login');
		$manager = $this->managers->get_manager($login);
		$this->design->assign('m', $manager);

			$order->name = $user->name;
			$order->email = $user->email;
			$order->phone = $user->rukovoditeltel;
			$order->address = $user->adress;
			$order->user_id = $user->id;
			$order->dataotgruzki = $this->request->post('dataotgruzki');
            $order->id = $this->orders->add_order($order);

				$purchases = array();
				if($this->request->post('purchases'))
				{


					foreach($this->request->post('purchases') as $n=>$va) foreach($va as $i=>$v)
					{
						if(empty($purchases[$i]))
							$purchases[$i] = new stdClass;
						$purchases[$i]->$n = $v;
					}
				}
				$posted_purchases_ids = array();
				foreach($purchases as $purchase)
				{
					$variant = $this->variants->get_variant($purchase->variant_id);
					$product = $this->products->get_product(intval($variant->product_id));


					$this->orders->add_purchase(array('order_id'=>$order->id, 'variant_id'=>$purchase->variant_id, 'variant_name'=>$variant->name, 'price'=>$purchase->price, 'amount'=>$purchase->amount));

					$this->users->delete_user_basket($user->id, $purchase->variant_id);

					$posted_purchases_ids[] = $purchase->id;
				}


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

			foreach($this->users->get_users() as $user)
			{
				$filter_managers[] = $user->manager;
			}

		//уникализировать многомерный массив, удалив одинаковые значения (дубли), на PHP.
		$filter_managers = array_map("unserialize", array_unique(array_map("serialize", $filter_managers)));

		//убираем пустые значения из массива
		$filter_managers = array_diff($filter_managers, array(''));

		//фильтр по городам
		$filter_citys = array();

			foreach($this->users->get_users() as $user)
			{
				$filter_citys[] = $user->gorod;
			}

		//уникализировать многомерный массив, удалив одинаковые значения (дубли), на PHP.
		$filter_citys = array_map("unserialize", array_unique(array_map("serialize", $filter_citys)));

		//убираем пустые значения из массива
		$filter_citys = array_diff($filter_citys, array(''));


		$this->design->assign('filter_groups', $filter_groups);
		$this->design->assign('filter_citys', $filter_citys);
		$this->design->assign('filter_managers', $filter_managers);


		//Ajax фильтрация @**************************************************************************************

		// Категории покупателя
		$user_categories = array();

		// Получаем категории покупателя
		$user_categories = $this->users->get_user_categories(array('user_id'=>$user->id));

		// Все категории
		$groups = $this->users->get_groups();
		$this->design->assign('ucategories', $groups);

		//Запрашиваем корзину покупателя
		$basket = array();
		$filter['userid'] = $user->id;

		$this->design->assign('status', $this->request->get('status', 'string'));
		$this->design->assign('isupplier', $this->request->get('isupplier', 'string'));

		$managers = $this->managers->get_managers();
		$this->design->assign('managers', $managers);
		$basket = $this->users->get_user_basket($filter);
		$this->design->assign('user_categories', $user_categories);
        $this->design->assign('basket', $basket);
		$this->design->assign('products', $products);
		$this->design->assign('products_json', json_encode($products));

		//Текущие фильтры
		$filters = array();
		$this->design->assign('filters', $filters);

		//Покупатели

		$users = $this->users->get_uprice(array('rowtype'=>'supplys'));
		$filter_users = array();

		foreach($users as &$user)
			{
				$filter_users[] = $user->userid;
			}

		//уникализировать многомерный массив, удалив одинаковые значения (дубли), на PHP.
		$filter_users = array_map("unserialize", array_unique(array_map("serialize", $filter_users)));

		//убираем пустые значения из массива
		$filter_users = array_diff($filter_users, array(''));

		$users_filtered = array();

		//Формируем новый массив с именем
		foreach($filter_users as &$filter_user)
			{
				$user_filtered   = new stdClass();
				$usr = $this->users->get_user(intval($filter_user));
				$user_filtered->id = $usr->id;
				$user_filtered->name = $usr->name;
				$users_filtered[] = $user_filtered;
			}

		$this->design->assign('users', $users_filtered);

		//Покупатели@



		//пробуем передать smarty имя текущего класса

		//$this->assign('currentController', "5655");
		$this->design->assign('currentController', get_class($this));

 	    //Этот код отвечает за вывод шаблона на печать
 	    switch ($this->request->get('view')) {

 	    	case "productsexport":
 	    	foo($products);
 	    	return $this->design->fetch('');
 	    	break;

 	    	case "rightiframe":
 	    	return $this->design->fetch('supplys-rightiframe.tpl');

 	    	break;

 	    	default:
 	    	return $this->design->fetch('supplys.tpl');
 	    }

	}

}

