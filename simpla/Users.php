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

	public function get_products($filter = array())
	{		
		// По умолчанию
		$limit = 100;
		$page = 1;
		$category_id_filter = '';
		$brand_id_filter = '';
		$product_id_filter = '';
		$features_filter = '';
		$keyword_filter = '';
		$visible_filter = '';
		$is_featured_filter = '';
		$discounted_filter = '';
		$in_stock_filter = '';
		$group_by = '';
		$order = 'p.name DESC';

		if(isset($filter['limit']))
			$limit = max(1, intval($filter['limit']));

		if(isset($filter['page']))
			$page = max(1, intval($filter['page']));

		$sql_limit = $this->db->placehold(' LIMIT ?, ? ', ($page-1)*$limit, $limit);

		if(!empty($filter['id']))
			$product_id_filter = $this->db->placehold('AND p.id in(?@)', (array)$filter['id']);

		if(!empty($filter['category_id']))
		{
			$category_id_filter = $this->db->placehold('INNER JOIN __products_categories pc ON pc.product_id = p.id AND pc.category_id in(?@)', (array)$filter['category_id']);
			$group_by = "GROUP BY p.id";
		}

		if(!empty($filter['brand_id']))
			$brand_id_filter = $this->db->placehold('AND p.brand_id in(?@)', (array)$filter['brand_id']);

		if(isset($filter['featured']))
			$is_featured_filter = $this->db->placehold('AND p.featured=?', intval($filter['featured']));

		if(isset($filter['discounted']))
			$discounted_filter = $this->db->placehold('AND (SELECT 1 FROM __variants pv WHERE pv.product_id=p.id AND pv.compare_price>0 LIMIT 1) = ?', intval($filter['discounted']));

		if(isset($filter['in_stock']))
			$in_stock_filter = $this->db->placehold('AND (SELECT count(*)>0 FROM __variants pv WHERE pv.product_id=p.id AND pv.price>0 AND (pv.stock IS NULL OR pv.stock>0) LIMIT 1) = ?', intval($filter['in_stock']));

		if(isset($filter['visible']))
			$visible_filter = $this->db->placehold('AND p.visible=?', intval($filter['visible']));

 		if(!empty($filter['sort']))
	switch ($filter['sort'])
	{
		case 'position':
		$order = 'p.position DESC';
		break;
 
		// по имени от А до Я
		case 'name_asc':
		$order = 'p.name';
		break;
 
		// по имени от Я до А
		case 'name_desc':
		$order = 'p.name DESC';
		break;
 
		// по цене Низкие > Высокие
		case 'price_asc':
		$order = '(SELECT pv.price FROM __variants pv WHERE (pv.stock IS NULL OR pv.stock>0) AND p.id = pv.product_id AND pv.position=(SELECT MIN(position) FROM __variants WHERE (stock>0 OR stock IS NULL) AND product_id=p.id LIMIT 1) LIMIT 1)';
		break;
 
		// по цене Высокие < Низкие
		case 'price_desc':
		$order = '(SELECT pv.price FROM __variants pv WHERE (pv.stock IS NULL OR pv.stock>0) AND p.id = pv.product_id AND pv.position=(SELECT MIN(position) FROM __variants WHERE (stock>0 OR stock IS NULL) AND product_id=p.id LIMIT 1) LIMIT 1) DESC';
		break;
 
		case 'created':
		$order = 'p.created DESC';
		break;
 
	}
	
		if(!empty($filter['keyword']))
		{
			$keywords = explode(' ', $filter['keyword']);
			foreach($keywords as $keyword)
			{
				$kw = $this->db->escape(trim($keyword));
				$keyword_filter .= $this->db->placehold("AND (p.name LIKE '%$kw%' OR p.meta_keywords LIKE '%$kw%' OR p.id in (SELECT product_id FROM __variants WHERE sku LIKE '%$kw%'))");
			}
		}

		if(!empty($filter['features']) && !empty($filter['features']))
			foreach($filter['features'] as $feature=>$value)
				$features_filter .= $this->db->placehold('AND p.id in (SELECT product_id FROM __options WHERE feature_id=? AND value=? ) ', $feature, $value);

		$query = "SELECT  
					p.id,
					p.url,
					p.brand_id,
					p.name,
					p.annotation,
					p.body,
					p.position,
					p.created as created,
					p.visible, 
					p.featured, 
					p.meta_title, 
					p.meta_keywords, 
					p.meta_description,
					p.supplier1,
                    p.supplier2,
                    p.supplier3,
                    p.supplier4,
                    p.supplier5,
                    p.supplier6,
                    p.supplier7,
                    p.supplier8,
                    p.supplier9,
                    p.supplier10,
                    p.price1,
                    p.price2,
                    p.price3,
                    p.price4,
                    p.price5,
                    p.price6,
                    p.price7,
                    p.price8,
                    p.price9,
                    p.price10,
                    p.aprice1,
                    p.aprice2,
                    p.aprice3,
                    p.aprice4,
                    p.aprice5,
                    p.aprice6,
                    p.aprice7,
                    p.aprice8,
                    p.aprice9,
                    p.aprice10,
                    p.astock1,
                    p.astock2,
                    p.astock3,
                    p.astock4,
                    p.astock5,
                    p.astock6,
                    p.astock7,
                    p.astock8,
                    p.astock9,
                    p.astock10,
                    p.oprice1,
                    p.oprice2,
                    p.oprice3,
                    p.oprice4,
                    p.oprice5,
                    p.oprice6,
                    p.oprice7,
                    p.oprice8,
                    p.oprice9,
                    p.oprice10,
                    p.ostock1,
                    p.ostock2,
                    p.ostock3,
                    p.ostock4,
                    p.ostock5,
                    p.ostock6,
                    p.ostock7,
                    p.ostock8,
                    p.ostock9,
                    p.ostock10,
                    p.contacts1,
                    p.contacts2,
                    p.contacts3,
                    p.contacts4,
                    p.contacts5,
                    p.contacts6,
                    p.contacts7,
                    p.contacts8,
                    p.contacts9,
                    p.contacts10,
                    p.prod1,
                    p.prod2,
                    p.prod3,
                    p.prod4,
                    p.prod5,
                    p.prod6,
                    p.prod7,
                    p.prod8,
                    p.prod9,
                    p.prod10,
                    p.art1,
                    p.art2,
                    p.art3,
                    p.art4,
                    p.art5,
                    p.art6,
                    p.art7,
                    p.art8,
                    p.art9,
                    p.art10,
					b.name as brand,
					b.url as brand_url
				FROM __products p		
				$category_id_filter 
				LEFT JOIN __brands b ON p.brand_id = b.id
				WHERE 
					1
					$product_id_filter
					$brand_id_filter
					$features_filter
					$keyword_filter
					$is_featured_filter
					$discounted_filter
					$in_stock_filter
					$visible_filter
				$group_by
				ORDER BY $order
					$sql_limit";

		$this->db->query($query);

		return $this->db->results();
	}
	
	public function get_product($id)
	{
		if(is_int($id))
			$filter = $this->db->placehold('p.id = ?', $id);
		else
			$filter = $this->db->placehold('p.url = ?', $id);
			
		$query = "SELECT DISTINCT
					p.id,
					p.url,
					p.brand_id,
					p.name,
					p.annotation,
					p.body,
					p.position,
					p.created as created,
					p.visible, 
					p.featured, 
					p.meta_title, 
					p.meta_keywords, 
					p.meta_description,
						p.supplier1,
                    p.supplier2,
                    p.supplier3,
                    p.supplier4,
                    p.supplier5,
                    p.supplier6,
                    p.supplier7,
                    p.supplier8,
                    p.supplier9,
                    p.supplier10,
                    p.price1,
                    p.price2,
                    p.price3,
                    p.price4,
                    p.price5,
                    p.price6,
                    p.price7,
                    p.price8,
                    p.price9,
                    p.price10,
                    p.aprice1,
                    p.aprice2,
                    p.aprice3,
                    p.aprice4,
                    p.aprice5,
                    p.aprice6,
                    p.aprice7,
                    p.aprice8,
                    p.aprice9,
                    p.aprice10,
                    p.astock1,
                    p.astock2,
                    p.astock3,
                    p.astock4,
                    p.astock5,
                    p.astock6,
                    p.astock7,
                    p.astock8,
                    p.astock9,
                    p.astock10,
                    p.oprice1,
                    p.oprice2,
                    p.oprice3,
                    p.oprice4,
                    p.oprice5,
                    p.oprice6,
                    p.oprice7,
                    p.oprice8,
                    p.oprice9,
                    p.oprice10,
                    p.ostock1,
                    p.ostock2,
                    p.ostock3,
                    p.ostock4,
                    p.ostock5,
                    p.ostock6,
                    p.ostock7,
                    p.ostock8,
                    p.ostock9,
                    p.ostock10,
                    p.contacts1,
                    p.contacts2,
                    p.contacts3,
                    p.contacts4,
                    p.contacts5,
                    p.contacts6,
                    p.contacts7,
                    p.contacts8,
                    p.contacts9,
                    p.contacts10,
                    p.prod1,
                    p.prod2,
                    p.prod3,
                    p.prod4,
                    p.prod5,
                    p.prod6,
                    p.prod7,
                    p.prod8,
                    p.prod9,
                    p.prod10,
                    p.art1,
                    p.art2,
                    p.art3,
                    p.art4,
                    p.art5,
                    p.art6,
                    p.art7,
                    p.art8,
                    p.art9,
                    p.art10
				FROM __products AS p
                LEFT JOIN __brands b ON p.brand_id = b.id
                WHERE $filter
                GROUP BY p.id
                LIMIT 1";
		$this->db->query($query);
		$product = $this->db->result();
		return $product;
	}


	//варианты товара

	public function get_variants($filter = array())
	{		
		$product_id_filter = '';
		$variant_id_filter = '';
		$instock_filter = '';
		
		if(!empty($filter['product_id']))
			$product_id_filter = $this->db->placehold('AND v.product_id in(?@)', (array)$filter['product_id']);
		
		if(!empty($filter['id']))
			$variant_id_filter = $this->db->placehold('AND v.id in(?@)', (array)$filter['id']);

		if(!empty($filter['in_stock']) && $filter['in_stock'])
			$variant_id_filter = $this->db->placehold('AND (v.stock>0 OR v.stock IS NULL)');

		if(!$product_id_filter && !$variant_id_filter)
			return array();
		
		$query = $this->db->placehold("SELECT v.id, v.product_id , v.price, v.zakupka, v.kopt, v.opt, v.roznper, v.optper, v.koptper, v.lastedit, NULLIF(v.compare_price, 0) as compare_price, v.sku, IFNULL(v.stock, ?) as stock, (v.stock IS NULL) as infinity, v.name, v.attachment, v.position
					FROM __variants AS v
					WHERE 
					1
					$product_id_filter          
					$variant_id_filter   
					ORDER BY v.position       
					", $this->settings->max_order_amount);
		
		$this->db->query($query);	
		return $this->db->results();
	}
	
	
	public function get_variant($id)
	{	
		if(empty($id))
			return false;
			
		$query = $this->db->placehold("SELECT v.id, v.product_id , v.price, v.zakupka, v.kopt, v.opt, v.roznper, v.optper, v.koptper, v.lastedit, NULLIF(v.compare_price, 0) as compare_price, v.sku, IFNULL(v.stock, ?) as stock, (v.stock IS NULL) as infinity, v.name, v.attachment
					FROM __variants v WHERE id=?
					LIMIT 1", $this->settings->max_order_amount, $id);
		
		$this->db->query($query);	
		$variant = $this->db->result();
		return $variant;
	}
	
	public function update_variant($id, $variant)
	{
		$query = $this->db->placehold("UPDATE __variants SET ?% WHERE id=? LIMIT 1", $variant, intval($id));
		$this->db->query($query);
		return $id;
	}
	
	public function add_variant($variant)
	{
		$query = $this->db->placehold("INSERT INTO __variants SET ?%", $variant);
		$this->db->query($query);
		return $this->db->insert_id();
	}

	public function delete_variant($id)
	{
		if(!empty($id))
		{
			$this->delete_attachment($id);
			$query = $this->db->placehold("DELETE FROM __variants WHERE id = ? LIMIT 1", intval($id));
			$this->db->query($query);
			$this->db->query('UPDATE __purchases SET variant_id=NULL WHERE variant_id=?', intval($id));
		}
	}
	
	public function delete_attachment($id)
	{
		$query = $this->db->placehold("SELECT attachment FROM __variants WHERE id=?", $id);
		$this->db->query($query);
		$filename = $this->db->result('attachment');
		$query = $this->db->placehold("SELECT 1 FROM __variants WHERE attachment=? AND id!=?", $filename, $id);
		$this->db->query($query);
		$exists = $this->db->num_rows();
		if(!empty($filename) && $exists == 0)
			@unlink($this->config->root_dir.'/'.$this->config->downloads_dir.$filename);
		$this->update_variant($id, array('attachment'=>null));
	}

	//варианты товара@
	
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
		$query = $this->db->placehold("SELECT u.id, u.email, u.password, u.name, u.group_id, u.enabled, u.last_ip, u.created, g.discount, g.name as group_name FROM __users u
		                                LEFT JOIN __groups g ON u.group_id=g.id 
										WHERE 1 $group_id_filter $keyword_filter ORDER BY $order $sql_limit");
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
		$query = $this->db->placehold("SELECT u.id, u.email, u.password, u.name, u.group_id, u.enabled, u.last_ip, u.created, g.discount, u.rukovoditel, u.rukovoditeltel, u.snab, u.snabtel, u.site, u.gorod, u.adress, g.name as group_name FROM __users u LEFT JOIN __groups g ON u.group_id=g.id $where LIMIT 1", $id);
		$this->db->query($query);
		$user = $this->db->result();
		if(empty($user))
			return false;
		$user->discount *= 1; // Убираем лишние нули, чтобы было 5 вместо 5.00
		return $user;
	}
	
	public function add_user($user)
	{
		$user = (array)$user;
		//if(isset($user['password']))
			//$user['password'] = md5($this->salt.$user['password'].md5($user['password']));
			
		//$query = $this->db->placehold("SELECT count(*) as count FROM __users WHERE email=?", $user['email']);
		//$this->db->query($query);
		
		//if($this->db->result('count') > 0)
			//return false;
		
		$query = $this->db->placehold("INSERT INTO __users SET ?%", $user);
		$this->db->query($query);
		return $this->db->results();
	}

	//прайс

		function get_uprice()
	{

		//$productid, $uprice, $userid
	
		// Выбираем прайс клиента
		//$query = $this->db->placehold("SELECT u.id, u.productid, u.userid, u.pricetype, u.price, u.date FROM __users u LEFT JOIN __products p ON u.productid=p.id $where LIMIT 1", $productid);
		//$this->db->query($query);
		//$user = $this->db->result();
		//if(empty($user))
	    return false;
		//return $user;

		echo "Привет мир!";
		echo "Привет мир!";
		echo "Привет мир!";
		echo "Привет мир!";
		echo "Привет мир!";
		echo "Привет мир!";
	}

	//добавляем прайс

	public function add_uprice($uprice)
	{

		$uprice = (array)$uprice;
		$query = $this->db->placehold("INSERT INTO  __uprice SET ?%", $uprice);
		$this->db->query($query);
		return $this->db->results();
	}

	public function add_uprice2($uprice)
	{
		//$uprice = (array)$uprice;
		$uprice =array();
        $uprice['pricetype']  = 'JOY' ;

		$query = $this->db->placehold("INSERT INTO  __uprice SET ?%", $uprice);
		$this->db->query($query);
		return $this->db->results();
	}
		
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
	
}