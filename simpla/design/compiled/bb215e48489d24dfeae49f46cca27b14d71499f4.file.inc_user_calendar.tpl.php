<?php /* Smarty version Smarty-3.1.18, created on 2015-01-21 14:54:38
         compiled from "simpla/design/html/inc_user_calendar.tpl" */ ?>
<?php /*%%SmartyHeaderCode:523834816543e68a9513c65-55284007%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bb215e48489d24dfeae49f46cca27b14d71499f4' => 
    array (
      0 => 'simpla/design/html/inc_user_calendar.tpl',
      1 => 1421841274,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '523834816543e68a9513c65-55284007',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_543e68a95171a1_56574122',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_543e68a95171a1_56574122')) {function content_543e68a95171a1_56574122($_smarty_tpl) {?><div class="user_calendar_wrapper">
<div class="pure-g">
<div class="pure-u-1-1">
<div class="pure-form">
    <fieldset>
        <legend><h2>Рабочая неделя c 16.10.14 по 21.10.14</h2></legend>

        <input type="text" placeholder="">
        <input type="text" placeholder="20.10.14">

        <button type="submit" class="pure-button pure-button">показать</button>
        <span class="right">
            <button type="submit" class="pure-button pure-button"><i class="fa fa-angle-left"></i></button>
            <button type="submit" class="pure-button pure-button"><i class="fa fa-angle-right"></i></button>
        </span>
    </fieldset>
</div>
</div>

<div class="pure-u-1-5">
<table class="pure-table pure-table-bordered" style="width:100%">
<thead>
<th>Пн 12.10.14</th>
</thead>
<tbody>
<tr style="vertical-align: top;">
<td><div class="pure-form">
    <fieldset>
        <textarea id="text_input" class="autosize-animated" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
        <button type="submit" class="pure-button pure-button" onclick=""><i class="fa fa-clock-o"></i></button>
        <button type="submit" class="pure-button pure-button" onclick="add_note();">добавить</button>
    </fieldset>
    <div class="note-wrap">
</div>
</td>
</tr>
</tbody>
</table>
</div>

<div class="pure-u-1-5">
<table class="pure-table pure-table-bordered" style="width:100%">
<thead>
<th>Пн 12.10.14</th>
</thead>
<tbody>
<tr style="vertical-align: top;">
<td><div class="pure-form">
    <fieldset>
        <textarea id="text_input" class="autosize-animated" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
        <button type="submit" class="pure-button pure-button" onclick=""><i class="fa fa-clock-o"></i></button>
        <button type="submit" class="pure-button pure-button" onclick="add_note();">добавить</button>
    </fieldset>
    <div class="note-wrap">
</div>
</td>
</tr>
</tbody>
</table>
</div>

<div class="pure-u-1-5">
<table class="pure-table pure-table-bordered" style="width:100%">
<thead>
<th>Пн 12.10.14</th>
</thead>
<tbody>
<tr style="vertical-align: top;">
<td><div class="pure-form">
    <fieldset>
        <textarea id="text_input" class="autosize-animated" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
        <button type="submit" class="pure-button pure-button" onclick=""><i class="fa fa-clock-o"></i></button>
        <button type="submit" class="pure-button pure-button" onclick="add_note();">добавить</button>
    </fieldset>
    <div class="note-wrap">
</div>
</td>
</tr>
</tbody>
</table>
</div>

<div class="pure-u-1-5">
<table class="pure-table pure-table-bordered" style="width:100%">
<thead>
<th>Пн 12.10.14</th>
</thead>
<tbody>
<tr style="vertical-align: top;">
<td><div class="pure-form">
    <fieldset>
        <textarea id="text_input" class="autosize-animated" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
        <button type="submit" class="pure-button pure-button" onclick=""><i class="fa fa-clock-o"></i></button>
        <button type="submit" class="pure-button pure-button" onclick="add_note();">добавить</button>
    </fieldset>
    <div class="note-wrap">
</div>
</td>
</tr>
</tbody>
</table>
</div>

<div class="pure-u-1-5">
<table class="pure-table pure-table-bordered" style="width:100%">
<thead>
<th>Пн 12.10.14</th>
</thead>
<tbody>
<tr style="vertical-align: top;">
<td><div class="pure-form">
    <fieldset>
        <textarea id="text_input" class="autosize-animated" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
        <button type="submit" class="pure-button pure-button" onclick=""><i class="fa fa-clock-o"></i></button>
        <button type="submit" class="pure-button pure-button" onclick="add_note();">добавить</button>
    </fieldset>
    <div class="note-wrap">
</div>
</td>
</tr>
</tbody>
</table>
</div>

</div>
</div>






<style>
.note-wrap{
    word-break: break-all;
}

.note-wrap span{
display: block;
margin-bottom: 5px;
padding: 10px;
background-color: rgba(223, 243, 222, 0.66);
border-radius: 5px;
}

.note-wrap textarea  {
    display: block;
    padding:25px 25px 40px;
    margin:0 auto 20px auto;
    width:250px;
    font:20px 'Gloria Hallelujah', cursive;
    line-height:1.5;
    border:0;
    border-radius:3px;
    background: -webkit-linear-gradient(#F9EFAF, #F7E98D);
    background: -moz-linear-gradient(#F9EFAF, #F7E98D);
    background: -o-linear-gradient(#F9EFAF, #F7E98D);
    background: -ms-linear-gradient(#F9EFAF, #F7E98D);
    background: linear-gradient(#F9EFAF, #F7E98D);
    box-shadow:0 4px 6px rgba(0,0,0,0.1);
    overflow:hidden;
    transition:box-shadow 0.5s ease;
    font-smoothing:subpixel-antialiased;
}

.note-wrap textarea:hover { box-shadow:0 5px 8px rgba(0,0,0,0.15); }
.note-wrap textarea:focus { box-shadow:0 5px 12px rgba(0,0,0,0.2); outline:none; }
</style>

<script>
function     add_note(argument) {
    // body...
    var date = new Date();
    var text = document.getElementById("text_input").value;
    $(".note-wrap").append(date.getHours()+':'+date.getMinutes()+':'+date.getSeconds()+':'+date.getMilliseconds());
    $(".note-wrap").append("<span>"+text+"<i class='fa fa-trash right'></i></span>");
    document.getElementById("text_input").value = '';
}
</script>
<?php }} ?>
