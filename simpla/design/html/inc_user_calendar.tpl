<div class="user_calendar_wrapper">
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




{literal}

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
{/literal}