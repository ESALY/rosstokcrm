<div class="user_new_wrapper">
<h1>Новый покупатель</h1>
    <div class="newu">
        <ul>{if $groups}
            <li>
                <label>Группа</label>
                <select id="group_id">
                    <option value='0'>Не входит в группу</option>{foreach from=$groups item=g}
                    <option value='{$g->id}' {if $user->group_id == $g->id}selected{/if}>{$g->name|escape}</option>{/foreach}</select>
            </li>{/if}
            <li>
                <label>Организация</label>
                <input type="text" id="name" value="{$user->name|escape}">
            </li>
            <li>
                <label>Менеджер</label>
                <input type="text" id="manager" value="{$user->manager|escape}">
            </li>
            <li>
                <label>Руководитель</label>
                <input type="text" id="rukovoditel" value="{$user->rukovoditel|escape}">
            </li>
            <li>
                <label>Телефон</label>
                <input type="text" id="rukovoditeltel" value="{$user->rukovoditeltel|escape}">
            </li>
            <li>
                <label>Снабженец</label>
                <input type="text" id="snab" value="{$user->snab|escape}">
            </li>
            <li>
                <label>Телефон</label>
                <input type="text" id="snabtel" value="{$user->snabtel|escape}"></li>
                <li>
                    <label>Почта</label>
                    <input type="text" id="email" value="{$user->email|escape}">
                </li>
                <li>
                    <label>Сайт</label>
                    <input type="text" id="site" value="{$user->site|escape}">
                </li>
                <li>
                    <label>Город</label>
                    <input type="text" id="gorod" value="{$user->gorod|escape}">
                </li>
                <li>
                    <label>Адрес</label>
                    <input type="text" id="adress" value="{$user->adress|escape}">
                </li>
                <li>
                    <label>User id</label>
                    <input id="id" type="text" disabled value="{$user->id}" />
                </li>
                <li>
                    <label>Session id</label>
                    <input id="session_id" type="text" disabled value="{$smarty.session.id}" />
                </li>
<i class="divider"></i>

<div class="button button-rounded button-flat-action button-large" onclick="adduserinfo()">
<span id="btnel">Добавить</span>
<i id="statusicon" class="fa fa-paper-plane"></i>
</div>
        </ul>
    </div>
</div>