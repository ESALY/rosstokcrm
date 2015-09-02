    <div class="frame-menu-main horizontal-menu"> 
      <!--    menu-row-category || menu-col-category-->
      <div class="container">
        <div class="menu-main not-js menu-col-category">
          <nav>
            <table>
              <tbody>
                <tr>
                  <td class="mq-w-480 mq-min mq-table-cell"><div class="frame-item-menu-out frameItemMenu">
                      <div class="frame-title is-sub"> <span class="title title-united"><span class="helper"></span><span class="text-el">Каталог</span></span> <span class="icon-is-sub"></span> </div>
                      <div class="frame-drop-menu" id="unitedCatalog"></div>
                    </div></td>
                  <td data-mq-max="768" data-mq-min="0" data-mq-target="#unitedCatalog" class="mq-w-480 mq-max mq-table-cell"><table>
                      <tbody>
                        <tr> 
                          <!-- элементы меню -->
                          <td><div class="frame-item-menu frameItemMenu">
                              <div class="frame-title"><a href="catalog/mebelnaya-furnitura" title="Мебельная фурнитура" class="title"><span class="helper"></span><span class="text-el">Мебельная фурнитура</span></a> </div>
                            </div></td>
                          <td><div class="frame-item-menu frameItemMenu">
                              <div class="frame-title"><a href="catalog/stoleshnitsy" title="Столешницы" class="title"><span class="helper"></span><span class="text-el">Столешницы</span></a> </div>
                            </div></td>
                          <td><div class="frame-item-menu frameItemMenu">
                              <div class="frame-title"><a href="catalog/mebel" title="Мебель" class="title"><span class="helper"></span><span class="text-el">Мебель</span></a> </div>
                            </div></td>
                          <td><div class="frame-item-menu frameItemMenu">
                              <div class="frame-title"><a href="catalog/stanki-i-oborudovanie" title="Станки и оборудование" class="title"><span class="helper"></span><span class="text-el">Станки и оборудование</span></a> </div>
                            </div></td>
                          <td><div class="frame-item-menu frameItemMenu">
                              <div class="frame-title"><a href="muzykalnye-instrumenty.html" title="Музыкальные инструменты" class="title"><span class="helper"></span><span class="text-el">Домостроительство</span></a> </div>
                            </div></td>
                          <td><div class="frame-item-menu frameItemMenu">
                              <div class="frame-title"><a href="catalog/instrumenty" title="Инструменты" class="title"><span class="helper"></span><span class="text-el">Инструменты</span></a> </div>
                            </div></td>
                          <td><div class="frame-item-menu frameItemMenu">
                              <div class="frame-title"><a href="catalog/hoztovary" title="Хозтовары" class="title"><span class="helper"></span><span class="text-el">Хозтовары</span></a> </div>
                            </div></td>
                          <!-- элементы меню --> 
                        </tr>
                      </tbody>
                    </table></td>
                  <td class="mq-w-480 mq-min mq-table-cell"><div class="frame-item-menu frameItemMenu">
                      <div class="frame-title is-sub"> <span class="title title-united"><span class="helper"></span><span class="text-el">Магазин</span></span> <span class="icon-is-sub"></span> </div>
                      <div class="frame-drop-menu" id="topMenuInMainMenu"></div>
                    </div></td>
                  <td class="frame-search-form"><div class="p_r">
                      <div class="btn-search-show-hide">
                        <button type="button" class="icon_search mq-inline-block mq-w-480 mq-min" data-drop="[name='search']" data-place="inherit" data-overlay-opacity="0" data-before="beforeShowSearch" data-close="afterHideSearch" data-closed="closedSearch"><span class="text-el">Скрыть</span> </button>
                      </div>
                      <form name="search" method="get" action="http://fluid.imagecmsdemo.net/shop/search" class="mq-block mq-w-768 mq-max">
                        <input type="text" class="input-search" id="inputString" name="text" autocomplete="off" value="Поиск по сайту" data-val="Поиск по сайту" onfocus="if ($(this).val() == $(this).data('val'))
                                    $(this).val('')" onblur="if($(this).val() != $(this).data('val')) $(this).val($(this).data('val'))" />
                        <span class="btn-search">
                        <button type="submit"><span class="icon_search"></span><span class="text-el">Найти</span> </button>
                        </span>
                        <div id="suggestions" class="drop drop-search"></div>
                      </form>
                    </div></td>
                </tr>
              </tbody>
            </table>
          </nav>
        </div>
      </div>
      {literal}<script>
function beforeShowSearch(el, drop) {
    el.closest('td').prevAll().hide();
    el.css('position', 'static');
    drop.removeAttr('style');
}
function afterHideSearch(el, drop) {
    el.closest('td').find('form').hide();
    el.closest('td').prevAll().show().css('display', '');
    el.css('position', '');
}
function closedSearch(el, drop){
    drop.removeAttr('style');
}
</script>{/literal} 
    </div>
    
   
  </div>