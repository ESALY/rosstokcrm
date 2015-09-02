{* Информера корзины (отдаётся аяксом) *}

<div class="top-panel-basket">
<span>
{if $cart->total_products>0}
	У вас в корзине <a class="top-panel-basket-link" href="./cart/">
	{$cart->total_products} {$cart->total_products|plural:'товар':'товаров':'товара'}</a>
</br>
	на сумму {$cart->total_price|convert} {$currency->sign|escape}.
{else}
	Корзина пуста
{/if}
</span>
<div class="button"><a href="/cart" class="btn-white">Оформить заказ</a></div>
    </div>