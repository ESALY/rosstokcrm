

{* Информер сравнения товаров *}

{if $compare->total>0}
<div id="cat_compare_fixed">
	<form method="get" action="/compare/">
		<div class="cat_compare_fixed">
			<div class="cat_compare_fixed-list">
				<div data-schet="0" class="cat_compare_fixed-item">
						<noindex>
							<a style="font-size: 45px; font-weight: bold; text-decoration: none;" rel="nofollow" title="" href="/compare/" class="cat_compare_fixed-item_link">
		                    {$compare->total}
							</a>
						</noindex>
					</div>
				</div>
			<div class="clear"></div>
			{if $compare->total>1}
							<input type="submit" value="&nbsp;" class="compare_btn_submit">
				{/if}
					</div>
	</form>
	</div>

{/if}
