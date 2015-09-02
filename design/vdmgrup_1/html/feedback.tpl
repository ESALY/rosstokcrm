{* Страница с формой обратной связи *}
{$wrapper = 'index.tpl' scope=parent}

<div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">
            
            {* Заголовок страницы *}
{if $keyword}
Поиск {$keyword|escape}
{elseif $page}
{$page->name|escape}
{else}
{$category->name|escape} {$brand->name|escape} {$keyword|escape}
{/if}
            
            </div>
          </div>
</div>
{$page->body}

{*
<div class="kontakty">
  <div class="kontakty-right">
    <div class="kontakty-block-right-header">Напишите нам</div>
    <div class="kontakty-block-right-form">
      <form id="form1" name="form1" method="post"><label>Имя</label><input type="text">
      <!--форма-->
      <label>Почта</label><input type="text">
      <!--форма-->
      <label>Телефон</label>
      <input type="text">
      <!--форма-->
      <label>Сообщение</label><textarea></textarea>
      <input type="button" class="form-button" value="Отправить">
      </form>
      
    </div>
  </div>
  <div class="kontakty-left">
  <div class="kontakty-header">Контакты</div>
    <div class="kontakty-block">
      
      <div class="kontakty-block-header">
        <div class="kontakty-block-icon"><i class="icon-cloud-download"></i></div>
      Адрес</div> 
      <div class="kontakty-block-right">Здесь располагается содержимое  class "kontakty-block-right"</div>
    </div>
    <div class="kontakty-block">
      
      <div class="kontakty-block-header">
        <div class="kontakty-block-icon"><i class="icon-cloud-download"></i></div>
      Адрес</div> 
      <div class="kontakty-block-right">Здесь располагается содержимое  class "kontakty-block-right"</div>
    </div>
    <div class="kontakty-block">
      
      <div class="kontakty-block-header">
        <div class="kontakty-block-icon"><i class="icon-cloud-download"></i></div>
      Адрес</div> 
      <div class="kontakty-block-right">Здесь располагается содержимое  class "kontakty-block-right"</div>
    </div>
    <div class="kontakty-block">
      
      <div class="kontakty-block-header">
        <div class="kontakty-block-icon"><i class="icon-cloud-download"></i></div>
      Адрес</div> 
      <div class="kontakty-block-right">Здесь располагается содержимое  class "kontakty-block-right"</div>
    </div>
    <div class="kontakty-left-social">
      <div class="kontakty-left-social-icon"></div>
    </div>
  </div>
</div>
*}

