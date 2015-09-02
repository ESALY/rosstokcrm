<?PHP
require_once('api/Simpla.php');

class UserAdmin extends Simpla
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
	  	$filter['page'] = min($filter['page'], $pages_count);
	 	$this->design->assign('products_count', $products_count);
	 	$this->design->assign('pages_count', $pages_count);
	 	$this->design->assign('current_page', $filter['page']);

	 	$filter['sort'] = $this->request->get('sort');
	 	//Сортировка по имени
	 	// Сортировка товаров, сохраняем в сесси, чтобы текущая сортировка оставалась для всего сайта
		if($sort = $this->request->get('sort', 'string'))
			$_SESSION['sort'] = $sort;
		if (!empty($_SESSION['sort']))
			$filter['sort'] = $_SESSION['sort'];
		else
			$filter['sort'] = 'position';
		$this->design->assign('sort', $filter['sort']);

		//$filter['limit'] = $products_count;
		$products = array();
		foreach($this->products->get_products($filter) as $p)
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
			}
			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "cena_klienta";
			$cena_klienta = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($cena_klienta as &$cena_kl)
			{
				$products[$cena_kl->productid]->cena_klienta[] = $cena_kl;

			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "utverzhdennaja_cena";
			$utverzhdennaja_cena = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($utverzhdennaja_cena as &$utverzhdennaja_c)
			{
				$products[$utverzhdennaja_c->productid]->utverzhdennaja_cena[] = $utverzhdennaja_c;
				//echo $utverzhdennaja_c->price;
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "spec";
			$spec = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($spec as &$sp)
			{
				$products[$sp->productid]->spec[] = $sp;
				//echo $sp->spec_cena;
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "akcija";
			$akcija = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($akcija as &$ak)
			{
				$products[$ak->productid]->akcija[] = $ak;
				//echo $ak->akcija;
			}


			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "prodcomment";
			$prodcomment = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($prodcomment as &$pcom)
			{
				$products[$pcom->productid]->prodcomment[] = $pcom;
				//echo $ak->akcija;
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "beret";
			$beretstatus = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($beretstatus as &$bs)
			{
				$products[$bs->productid]->beretstatus[] = $bs;
				//echo $ak->akcija;
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "ispol";
			$ispolstatus = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($ispolstatus as &$isp)
			{
				$products[$isp->productid]->ispolstatus[] = $isp;
				//echo $ak->akcija;
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "spros";
			$sprosstatus = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($sprosstatus as &$spr)
			{
				$products[$spr->productid]->sprosstatus[] = $spr;
				//echo $ak->akcija;
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "nein";
			$neinstatus = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($neinstatus as &$ni)
			{
				$products[$ni->productid]->neinstatus[] = $ni;
				//echo $ak->akcija;
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

			$row_fillter = "print";
			$printstatus = $this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter));

			foreach($printstatus as &$item)
			{
				$products[$item->productid]->printstatus[] = $item;
				$this->users->delete_uprice($user->id, $item->productid, $row_fillter);
			}

			////////////////////////////////////////////////////////////////////////////////////////////////////////

//*************************************************************************************************************************************************
			//переменная для категорий
			$ssubcat = array();
			$ssubcat_temp = array();

			//получаем варианты
			$variants = $this->variants->get_variants(array('product_id'=>$products_ids));

			//перебор вариантов
			foreach($variants as &$variant)
			{
				//Сравнение категорий товара
				$vcategories = $this->categories->get_product_categories($variant->product_id);
				//перебор категорий вариантов
				foreach($vcategories as &$vcategory)
			{
				$category = $this->categories->get_category(intval($vcategory->category_id));
				//вкладываем категорию в найденные
				$variant->categories[] = $category;

				//echo $category->name;

				$ssubcat[] = $category;

				if ($clast !== $category->name) {
					  $variant->category = 'as prev';
					}

				//выводим товары с заголовками
				$clast = $category->name;
			}
			//сравневаем варианты с продуктами
				$products[$variant->product_id]->variants[] = $variant;
			}

			$images = $this->products->get_images(array('product_id'=>$products_ids));
			foreach($images as $image)
				$products[$image->product_id]->images[$image->id] = $image;
		}

		//уникализировать многомерный массив, удалив одинаковые значения (дубли), на PHP.
		$ssubcat = array_map("unserialize", array_unique(array_map("serialize", $ssubcat)));

		$xxx = array();

		foreach($ssubcat as &$ssubct)
		{
			//товары в категории
			$xx = new stdClass;
			$xx->name = $ssubct->name;
			$xx->products = $this->products->get_products(array('category_id'=>$ssubct->id));

			if($ssubct->image){
			//Сжимаем изображение категории
			$xx->image = $ssubct->image;
			}

			//вытаскиваем варианты из товаров
			foreach($xx->products as &$product)
			{
				$xx->variants = $this->variants->get_variants(array('product_id'=>$product->id));

				//извлекаем первый вариант
				$product->firstvariant = array_shift($xx->variants);

				//цена покупателя для товара
				$row_fillter = "cena_klienta";
				$productid_filter = $product->id;
				//запрос в api и обрезка массива
				$product->firstvariant->cena_klienta = array_shift($this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter, 'productid'=>$productid_filter)));
				//print_r ($product->firstvariant->cena_klienta);

				//утвержденная цена для товара
				$row_fillter = "utverzhdennaja_cena";
				$productid_filter = $product->id;
				//запрос в api и обрезка массива
				$product->firstvariant->utverzhdennaja_cena = array_shift($this->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter, 'productid'=>$productid_filter)));
				//print_r ($product->firstvariant->utverzhdennaja_cena);

				//картинка продукта
				$images = $this->products->get_images(array('product_id'=>$product->id));
				$image = array_shift($images);
				//print_r ($image);
				$product->firstvariant->image = $image;

				//проверка есть ли во внутренних заказах
				$fruits = array ();
				$fruits[] = "test";
				$fruits[] = "test";
				$fruits[] = "test";
				$fruits[] = "test";

				$iorders = array ();

				//Подсчет количества
				$row_fillter = "supplys";
				$row_status = "";
				$iorders = $this->users->get_uprice(array('rowtype'=>$row_fillter, 'status'=>$row_status, 'productid'=>$product->id));

				//print_r($iorders);

				$product->iorders = $iorders;
			}

			$xxx[] = $xx;

			//echo $ssubct->name;
			//print_r ($xx->products);
		}

		$this->design->assign('ssubcat', $xxx);

//****************************************************************************************************************************************************
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

		$basket = $this->users->get_user_basket($filter);


		//Вывод товаров по категориям
		//********************************************************************************

		$products_by_categories = array();

		//print_r ($category->subcategories);

		foreach($category->subcategories as $subcategory)
				{
					echo 1111;
				}

		$product_by_categories = new stdClass;

		//Вывод товаров по категориям@
		//********************************************************************************



		//Дизайн
		//********************************************************************************

		$this->design->assign('user_categories', $user_categories);
        $this->design->assign('basket', $basket);
		$this->design->assign('products', $products);
		$this->design->assign('subcat', $ssubcat);

		 // Категории товаров
		$this->design->assign('categories', $this->categories->get_categories_tree());

		//пробуем передать smarty имя текущего класса

		//$this->assign('currentController', "5655");
		$this->design->assign('currentController', get_class($this));

		//Дизайн@
		//********************************************************************************

		//очищаем таблицу для печати

		if (in_array("Irix", $products->printstatus)) {
			echo "Нашел Irix";
		}

		//$this->users->delete_uprice($user->id, 'print');

 	    //Этот код отвечает за вывод шаблона на печать
 	    switch ($this->request->get('view')) {

 	    	case "print":
 	    	return $this->design->fetch('user_print.tpl');
 	    	break;

 	    	case "print_selected":
 	    	return $this->design->fetch('user_print_selected.tpl');
 	    	break;

 	    	case "print_beret":
 	    	return $this->design->fetch('user_print_beret.tpl');
 	    	break;

 	    	case "print_interes":
 	    	return $this->design->fetch('user_print_interes.tpl');
 	    	break;

 	    	case "print_spros":
 	    	return $this->design->fetch('user_print_spros.tpl');
 	    	break;

 	    	default:
 	    	return $this->design->fetch('user.tpl');
 	    }

	}

}

