<?PHP
require_once('api/Simpla.php');

class UserIframe extends Simpla
{	
	public function fetch()
	{
		$productid = $this->request->get('productid', 'int');
		$userid = $this->request->get('userid', 'string');

		//Основная функция для наполнения карточки заказа
		$product = $this->products->get_product(intval($productid));

		//Варианты товара
		$variants = $this->variants->get_variants(array('product_id'=>$product->id));

		foreach($variants as &$variant)
			{
				$product->variants[] = $variant;
			}

		$images = $this->products->get_images(array('product_id'=>$product->id));

		foreach($images as $image) {
			$product->images[$image->id] = $image;
			$product->image = array_shift($product->images);
		}

		$this->design->assign('userid', $userid);
		$this->design->assign('product', $product);
  	  	return $this->design->fetch('user_iframe.tpl');
	}
	
}