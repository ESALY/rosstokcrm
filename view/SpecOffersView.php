<?PHP

/**
 * Simpla CMS
 *
 * @copyright 	2011 Denis Pikusov
 * @link 		http://simplacms.ru
 * @author 		Denis Pikusov
 *
 * Этот класс использует шаблоны blog.tpl и post.tpl
 *
 */

require_once('View.php');

class SpecOffersView extends View
{
	public function fetch()
	{

		// Передаем в шаблон
		//$this->design->assign('posts', $posts);

    $row = new stdClass();
    $product = new stdClass();

    $row->header = 'заголовок';
    $row->headerimage = 'http://placehold.it/200x200';

     $product->image = 'http://placehold.it/50x50';
    $product->name = 'product name';
    $product->amount = 'product amount';
    $product->price = 'product price';

    $row->products[] = $product;

     $product->image = 'http://placehold.it/50x50';
    $product->name = 'product name';
    $product->amount = 'product amount';
    $product->price = 'product price';

    $row->products[] = $product;

     $product->image = 'http://placehold.it/50x50';
    $product->name = 'product name';
    $product->amount = 'product amount';
    $product->price = 'product price';

    $row->products[] = $product;

     $product->image = 'http://placehold.it/50x50';
    $product->name = 'product name';
    $product->amount = 'product amount';
    $product->price = 'product price';

    $row->products[] = $product;

    $product->image = 'http://placehold.it/50x50';
    $product->name = 'product name';
    $product->amount = 'product amount';
    $product->price = 'product price';

    $row->products[] = $product;

    $product->image = 'http://placehold.it/50x50';
    $product->name = 'product name';
    $product->amount = 'product amount';
    $product->price = 'product price';

    $row->products[] = $product;

    $product->image = 'http://placehold.it/50x50';
    $product->name = 'product name';
    $product->amount = 'product amount';
    $product->price = 'product price';

    $row->products[] = $product;

    $rows[] = $row;


    // Передаем в шаблон
    $this->design->assign('rows', $rows);

		$body = $this->design->fetch('specoffers.tpl');

		return $body;
	}
}