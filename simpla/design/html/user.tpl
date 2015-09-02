

{* Выводим форму для нового клиента *}
{if $user->id}

<div class="user-wrapper">
        <!-- Основная форма (The End) -->
        {else}
{include file='inc_user_new.tpl'}


{/if}{*if $user->id*}
{include file='inc_user_price.tpl'}
</div>
{*Подключаем JavaScript*}
<script src="design/js/user_united.js"></script>