<div class="user_info_wrapper">
    <div class="pure-form pure-form-stacked">
    <fieldset>
        <div class="pure-g">
            <div class="pure-u-1-8">
            <h2>Основное</h2>
                <label>Имя</label>
                <input type="text" id="name" value="{$user->name|escape}">
                <label>Руководитель</label>
                <input type="text" id="rukovoditel" value="{$user->rukovoditel|escape}">
                <label>Телефон</label>
                <input type="text" id="rukovoditeltel" value="{$user->rukovoditeltel|escape}">
                <label>Снабженец</label>
                <input type="text" id="snab" value="{$user->snab|escape}">
                <label>Телефон</label>
                <input type="text" id="snabtel" value="{$user->snabtel|escape}">
                </div>

                <div class="pure-u-1-8">
                <h2>Адреса</h2>
                <label>Город</label>
                <input type="text" id="gorod" value="{$user->gorod|escape}">
                <label>Улица, дом</label>
                <input type="text" id="adress" value="{$user->adress|escape}">
                <label>Почта</label>
                <input type="text" id="email" value="{$user->email|escape}">
                <label>Сайт</label>
                <input type="text" id="site" value="{$user->site|escape}">
                </div>
                <div class="pure-u-1-8">

                <h2>Дополнительно</h2>
                <label>Менеджер</label>
                <input type="text" id="manager" value="{$user->manager|escape}">
                <label>Комментарий</label>
                <input type="text" id="comment" value="{$user->comment|escape}">
                </div>

                {*добавление групп*}
                {if $user_categories}
                <div class="pure-u-1-3">
                <h2>Категория</h2>
                <div id="user_categories" {if !$categories}style='display:none;'{/if}>
            <ul>
                {foreach name=ucategories from=$user_categories item=user_category}
                <li>
                    <select name="categories[]">
                    <option value='0'>Не входит в группу</option>
                        {foreach from=$ucategories item=category}
                        <option value='{$category->id}'  {if $user_category->category_id == $category->id}selected{/if}>{$category->name|escape}</option>
                        {/foreach}
                    </select>
                    <span {if not $smarty.foreach.ucategories.first}style='display:none;'{/if} class="add"><i class="dash_link">Дополнительная категория</i></span>
                    <span {if $smarty.foreach.ucategories.first}style='display:none;'{/if} class="delete"><i class="dash_link">Удалить</i></span>
                </li>
                {/foreach}
            </ul>
    </div>

            </div>
            {else}
                            <div class="pure-u-1-3">
                <h2>Категория</h2>
                <div id="user_categories">
            <ul>
                <li>
                    <select name="categories[]">
                    <option value='0'>Не входит в группу</option>
                        {foreach from=$categories item=category}
                        <option value='{$category->id}'>{$category->name|escape}</option>
                        {/foreach}
                    </select>
                    <span class="add"><i class="dash_link">Дополнительная категория</i></span>
                </li>
            </ul>
            </div>
            </div>

            {/if}
{*добавление групп конец*}
</div>

            <div class="pure-u-1-8" style="display:none;">
                    <label>Дата регистрации</label>
                    <input id="" type="text" disabled value="{$user->created|date}" />
                </div>
                <div class="pure-u-1-8" style="display:none;">
                    <label>Последний IP</label>
                    <input id="" type="text" disabled value="{$user->last_ip|escape}" />
                </div>
                <div class="pure-u-1-8" style="display:none;">
                    <label>User id</label>
                    <input id="id" type="text" disabled value="{$user->id}" />
                </div>
                <div class="pure-u-1-8" style="display:none;">
                    <label>Session id</label>
                    <input id="session_id" type="text" disabled value="{$smarty.session.id}" />
                </div>

    </fieldset>
    </div>
<div class="button button-rounded button-flat-action button-large" onclick="updateuserinfo()">
<span id="btnel">Сохранить</span>
<i id="statusicon" class="fa fa-paper-plane"></i>
</div>
</div>
