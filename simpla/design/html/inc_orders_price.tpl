<div class="user_orders_wrapper">
        <!-- Основная форма (The End) -->{if $orders}
        <div class="block" id=column_left>
            <input type="hidden" name="session_id" value="{$smarty.session.id}">
             <h2>Заказы пользователя</h2>

            <div>{foreach $orders as $order}
                <div class="{if $order->paid}green{/if} row">
                    <div class="checkbox cell">
                        <input type="checkbox" name="check[]" value="{$order->id}" />
                    </div>
                    <div class="order_date cell">{$order->date|date} {$order->date|time}</div>
                    <div class="name cell"> <a href="{url module=OrderAdmin id=$order->id return=$smarty.server.REQUEST_URI}">Заказ №{$order->id}</a>

                    </div>
                    <div class="name cell">{$order->total_price}&nbsp;{$currency->sign}</div>
                    <div class="icons cell">{if $order->paid}
                        <img src='design/images/cash_stack.png' alt='Оплачен' title='Оплачен'>{else}
                        <img src='design/images/cash_stack_gray.png' alt='Не оплачен' title='Не оплачен'>{/if}</div>
                    <div class="icons cell"> <a href='#' class=delete></a>
                    </div>
                    <div class="clear"></div>
                </div>{/foreach}</div>
            <div id="action">
                <label id='check_all' class='dash_link'>Выбрать все</label> <span id=select>
  <select name="action">
    <option value="delete">Удалить</option>
  </select>
  </span>

                <input id="apply_action" class="button_green" name="user_orders" type="submit" value="Применить">
            </div>
        </div>
</div>