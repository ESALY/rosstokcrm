{* Информера корзины (отдаётся аяксом) *}

{if $cart->total_products>0}
<div class="basket_in_head_inner">
	<a href="./cart/" class="this_icon">&nbsp;</a>
	<div class="note">Корзина</div>
	<div class="info"><a href="./cart/">В вашей корзине <b>{$cart->total_products} </b>{$cart->total_products|plural:'товар':'товаров':'товара'}</a></div>
</div>
{else}
	<a class="this_icon" href="./cart/">&nbsp;</a>
	<div class="note">Корзина</div>
	<div class="info">Товаров нет</div>
{/if}
