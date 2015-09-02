{* Постраничный вывод *}

{if $total_pages_num>1}
{* Скрипт для листания через ctrl → *}
{* Ссылки на соседние страницы должны иметь id PrevLink и NextLink *}
<script type="text/javascript" src="js/ctrlnavigate.js"></script>           

<!-- Листалка страниц -->
<div class="navigation">
	
	{* Количество выводимых ссылок на страницы *}
	{$visible_pages = 11}

	{* По умолчанию начинаем вывод со страницы 1 *}
	{$page_from = 1}
	
	{* Если выбранная пользователем страница дальше середины "окна" - начинаем вывод уже не с первой *}
	{if $current_page_num > floor($visible_pages/2)}
		{$page_from = max(1, $current_page_num-floor($visible_pages/2)-1)}
	{/if}	
	
	{* Если выбранная пользователем страница близка к концу навигации - начинаем с "конца-окно" *}
	{if $current_page_num > $total_pages_num-ceil($visible_pages/2)}
		{$page_from = max(1, $total_pages_num-$visible_pages-1)}
	{/if}
	
	{* До какой страницы выводить - выводим всё окно, но не более ощего количества страниц *}
	{$page_to = min($page_from+$visible_pages, $total_pages_num-1)}
<div class="navigation-arrows">
	{if $current_page_num==2}<a id="navigation_1_previous_page" href="{url page=null}"><span class="prev_arrow_active">&nbsp;&nbsp;&nbsp;</span></a>{/if}
	</div>
	{* Ссылка на 1 страницу отображается всегда *}
	<div class="navigation-pages">
	<a href="{url page=null}"><span class="{if $current_page_num==1}nav-current-page{/if}">1</span></a>
	
	
	{* Выводим страницы нашего "окна" *}	
	{section name=pages loop=$page_to start=$page_from}
		{* Номер текущей выводимой страницы *}	
		{$p = $smarty.section.pages.index+1}	
		{* Для крайних страниц "окна" выводим троеточие, если окно не возле границы навигации *}	
		{if ($p == $page_from+1 && $p!=2) || ($p == $page_to && $p != $total_pages_num-1)}	
		<a  href="{url page=$p}"><span class="{if $p==$current_page_num}nav-current-page{/if}">...</span></a>
		{else}
		<a  href="{url page=$p}"><span class="{if $p==$current_page_num}nav-current-page{/if}">{$p}</span></a>
		{/if}
	{/section}

	{* Ссылка на последнююю страницу отображается всегда *}
	<a  href="{url page=$total_pages_num}"><span class="{if $current_page_num==$total_pages_num}nav-current-page{/if}">{$total_pages_num}</span></a>
	</div>
	
	
	{if $current_page_num>2}<div class="navigation-arrows"><a  href="{url page=$current_page_num-1}"><span class="disabled prev_arrow">&nbsp;&nbsp;&nbsp;</span></a></div>{/if}
	{if $current_page_num<$total_pages_num}<div class="navigation-arrows"><a id="navigation_1_next_page" href="{url page=$current_page_num+1}"><span class="next_arrow_active">&nbsp;&nbsp;&nbsp;</span></a></div>{/if}
	
</div>
<!-- Листалка страниц (The End) -->
{/if}
