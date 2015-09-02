<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8" />
    <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <title></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="style.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">

        {literal}
        <style>
        /* Eric Meyer's CSS Reset */
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
    display: block;
}
body {
    line-height: 1;
}
ol, ul {
    list-style: none;
}
blockquote, q {
    quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
/* End of Eric Meyer's CSS Reset */

html {
    height: 100%;
}
article, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary {
    display: block;
}
body {
    font: 12px/18px Arial, sans-serif;
    height: 100%;
}
.wrapper {
    min-width: 1000px;
    max-width: 3000px;
    margin: 0 auto;
    min-height: 100%;
    height: auto !important;
    height: 100%;
}


/* Header
-----------------------------------------------------------------------------*/
.header {
    height: 50px;
    background: #FFE680;
}


/* Middle
-----------------------------------------------------------------------------*/
.middle {
    width: 100%;
    padding: 0 0 50px;
    position: relative;
}
.middle:after {
    display: table;
    clear: both;
    content: '';
}
.container {
    width: 100%;
    float: left;
    overflow: hidden;
}
.content {
  padding: 0 270px 0 270px;
}


/* Left Sidebar
-----------------------------------------------------------------------------*/
.left-sidebar {
    float: left;
    width: 250px;
    margin-left: -100%;
    position: relative;
    background: #B5E3FF;
}

.left-sidebar ul{
margin-left: 10px;
margin-top: 10px;
margin-bottom: 15px;
}

.left-sidebar li{

}

/* Right Sidebar
-----------------------------------------------------------------------------*/

.right-sidebar {
float: left;
width: 250px;
margin-left: -250px;
position: relative;
background: #FFACAA;
}


/* Footer
-----------------------------------------------------------------------------*/
.footer {
    margin: -50px auto 0;
    min-width: 1000px;
    max-width: 3000px;
    height: 50px;
    background: #BFF08E;
    position: relative;
}

/* Top panel
-----------------------------------------------------------------------------*/

.header {

}
.header h2 {
  margin: 0;
  padding: 0;
  height: 48px;
  line-height: 48px;
  text-align: center;
  font-size: 1.2rem;
  font-weight: normal;
  color: #F66;
}

.menu-container {
  position: fixed;
  top: 48px;
  left: 0;
  right: 0;
  height: 44px;
  background: #EEE;
  -webkit-transition: background 0.4s, box-shadow 0.4s;
}

.menu-container-minimum {
  background: #FFF;
  box-shadow: 0 2px 1px rgba(0, 0, 0, 0.15);
}

.menu {
  margin: 0 auto;
  width: auto;
}

ul.horizontal {
  display: table;
  margin: 0 auto;
  padding: 0;
  list-style: none;
}
ul.horizontal li {
  display: inline-block;
  width: 96px;
  height: 44px;
  line-height: 44px;
  text-align: center;
}
ul.horizontal li a {
  display: inline-block;
  height: 41px;
  color: #999;
  text-decoration: none;
  border-bottom: 3px solid rgba(128, 128, 208, 0);
  -webkit-transition: border 0.2s, color 0.2s;
}
ul.horizontal li a:hover {
  color: #222;
  border-bottom: 3px solid #4080ff;
}

.navbar-right {
float: right;
margin-top: 10px;
}

.navbar-right ul{

}

.navbar-right li{
float:  left;
padding:    5px;
margin-right: 10px;
}

.navbar-left {
float: left;
margin-top: 10px;
margin-left: 151px;
}

.navbar-left ul{

}

.navbar-left li{
float:  left;
padding:    5px;
margin-right: 10px;
}

.navbar{
display: inline-block;
width: 100%;
}

.navbar-logo{
display: inline-block;
margin-top: 15px;
margin-left: 20px;
font-size: 23px;
float: left;
}

/* Test table
-----------------------------------------------------------------------------*/

.testTable {
  display: table;
  margin: 0px;
  padding: 0px;
}

.testRow {
  display: table-row;
}

.testRow > span {
  list-style:none;
  display: table-cell;
  border: 1px solid #000;
  padding: 2px 6px;
}

.testHeader {
  display: table-header-group;
  /*position: absolute;*/
}

.testHeader span {
  background-color: #ccc;
}

.testBody {
  display: table-row-group;
}

/* User dashboard
-----------------------------------------------------------------------------*/

.modSearch {
margin-top: 15px;
margin-right: 15px;
position: relative;
}

.modSearch input[type=text] {
background-color: #ececec;
border: none;
width: 100%;
box-sizing: border-box;
-moz-box-sizing: border-box;
-webkit-box-sizing: border-box;
padding: 10px 70px 10px 12px;
color: #454545;
border: 2px solid transparent;
border-radius: 5px;
}

.modSearch input[type=text]:focus {
    border: 2px solid #0089d7;
    outline: none;
    -moz-transition: all 1s;
    -webkit-transition: all 1s;
    -ms-transition: all 1s;
    -o-transition: all 1s;
    transition: all 1s;
}

.modSearch input[type=submit] {
    background-color: #ececec;
    border: none;
    content: "";
    position: absolute;
    right: 2px;
    top: 2px;
    bottom: 2px;
    width: 55px;
    cursor: pointer;
    border-radius: 5px;
    opacity: 0.5;
}

.modSearch input[type=submit]:hover {
    opacity: 0;
}

.modSearch .icon {
    position: absolute;
    right: 17px;
    top: 16px;
}

.modSearch .separator {
    position: absolute;
    width: 1px;
    top: 10px;
    bottom: 10px;
    right: 62px;
    background-image: linear-gradient(bottom, rgb(236,236,236) 0%, rgb(204,204,204) 50%, rgb(236,236,236) 100%);
    background-image: -o-linear-gradient(bottom, rgb(236,236,236) 0%, rgb(204,204,204) 50%, rgb(236,236,236) 100%);
    background-image: -moz-linear-gradient(bottom, rgb(236,236,236) 0%, rgb(204,204,204) 50%, rgb(236,236,236) 100%);
    background-image: -webkit-linear-gradient(bottom, rgb(236,236,236) 0%, rgb(204,204,204) 50%, rgb(236,236,236) 100%);
    background-image: -ms-linear-gradient(bottom, rgb(236,236,236) 0%, rgb(204,204,204) 50%, rgb(236,236,236) 100%);
    background-image: -webkit-gradient(
        linear,
        left bottom,
        left top,
        color-stop(0, rgb(236,236,236)),
        color-stop(0.5, rgb(204,204,204)),
        color-stop(1, rgb(236,236,236))
    );
}

.modSearch .indicator {
    position: absolute;
    height: 2px;
    background-color: #0089d7;
    width: 40px;
    right: 10px;
    bottom: 0;
    border-top-left-radius: 2px;
    border-top-right-radius: 2px;
}

.modSearch input[type=text]:-moz-placeholder {
    color: #cdcdcd;
}


.dashboard-orders-list{
  margin-top: 15px;
  margin-bottom: 50px;
  margin-right:   15px;
}

#list {
    min-width: 200px;
    border-bottom: 1px solid #d0d0d0;
    clear: both;
}
#list #list {
    border-bottom: none;
}
#list .clear {
    clear:both;
}
#list .row {
    border-top: 1px solid #d0d0d0;
    background-color: #f3f3f3;
    border-collapse: collapse;
}
#list .tree_row:hover {
    background-color: #f9f9f9;
}
#list .even {
    background-color: #ebebeb;
}
#list .cell {
    vertical-align: top;
    padding: 0px;
    padding-top: 10px;
    padding-bottom: 7px;
    float:left;
}
#list .move {
    vertical-align: center;
    width: 20px;
    padding-right: 0px;
    padding-left: 5px;
}
#list .move div {
    height:16px;
    width: 20px;
    margin-top: 2px;
}
#list .checkbox {
    width:20px;
    padding-right: 0px;
    padding-left: 5px;
}
#list .image {
    width: 35px;
    padding-bottom: 3px;
    padding-top: 5px;
    padding-right: 0px;
}
#list .image a {
    width: 35px;
    display: block;
}
#list .image img {
    margin-left: 5px;
    border: 1px solid #d3d3d3;
}
#list .name {
    font-size:12px;
    padding-left: 10px;
    max-width: 600px;
}
#list.related_products .name {
    width: 320px;
}
#list .product_name {
    width:485px;
    *position: relative;
}
#list .product_name a {
    *position: absolute;
    /*Scrum*/
    *left:0;
    /*Scrum*/
}
#list .brand_nameqwe {
    width:300px;
}
#list .page_name {
    width:300px;
}
#list .user_name {
    width:220px;
}
#list .user_email {
    width:200px;
}
#list .user_email a {
    color: #707070;
}
#list .user_group {
    width:200px;
    text-align: right;
    color: #707070;
}
#list.groups {
    width: 500px;
}
#list .group_name {
    width:250px;
    padding-left: 10px;
}
#list .group_discount {
    width:90px;
    text-align: right;
}
#list .order_name {
    width:350px;
}
#list .order_date {
    width:120px;
    color: #505050;
    font-size: 12px;
    padding-left: 10px;
}
#list .green {
    background-color: #dcffd0;
}
#list .variants div.expand_variant {
    float: right;
    text-align: left;
    width: 167px;
}
.expand_variant a {
    *position: static !important;
    /*Scrum*/
}
#list .variants a.expand_variant, #list .product_name a.roll_up_variant {
    color: #008fe9 !important;
    border-bottom-color: #008fe9 !important;
    font-size: 11px !important;
}
#list .variants {
    float:right;
    margin-top: -3px;
    font-size: 12px;
    color: #707070;
    padding-left:10px;
    text-align: right;
}
#list .variants ul li {
    text-align: right;
    margin-bottom: 2px;
    overflow: hidden;
}
#list .variants ul i {
    font-style:normal;
    padding-bottom: 2px;
    overflow: hidden;
}
#list .variants ul .price {
    font-size: 14px;
    width: 80px;
    text-align: right;
    margin-right: 3px;
}
#list .variants ul .compare_price {
    color: #dd0063;
}
#list .variants ul .stock {
    font-size: 14px;
    width: 40px;
    text-align: right;
    color: #4e4e4e;
    margin-right: 3px;
}
#list .icons {
    float: right;
    text-align: right;
    padding-right: 10px;
    padding-left: 10px;
    white-space:nowrap;
    zoom:1;
}
        </style>
        {/literal}
    <!--<![endif]-->

</head>
<body>

{*<div class="header-container">
    <div class="header">
        <h2>Fixed menu like Google+</h2>
    </div>
    <div id="menu-container" class="menu-container">
        <div class="menu">
            <ul class="horizontal">
                <li><a href="#">timeline</a></li>
                <li><a href="#">friend</a></li>
                <li><a href="#">profile</a></li>
            </ul>
        </div>
    </div>
</div>*}

<div class="wrapper">

    <header class="header">
    <div class="navbar">
    <div class="navbar-logo">
    ROSSTOK777
    </div>
    <div class="navbar-left">
    <ul>
    <li><a href='#'>Категории</a></li>
    <li><a href='#'>Метки</a></li>
    <li><a href='#'>Календарь</a></li>
    </ul>
    </div>
    <div class="navbar-right">
    <ul>
    <li>{$smarty.now|date_format:"%d %m %Y":"":"rus"}</li>
    <li>Вы вошли как {$manager->login}.
    <a href='{$config->root_url}?logout' id="logout">Выход</a></li>
    </ul>
    </div>
    </div>

    </header><!-- .header-->

    {$content}

</div><!-- .wrapper -->

<footer class="footer">
    <strong>Footer:</strong> Mus elit Morbi mus enim lacus at quis Nam eget morbi. Et semper urna urna non at cursus dolor vestibulum neque enim. Tellus interdum at laoreet laoreet lacinia lacinia sed Quisque justo quis. Hendrerit scelerisque lorem elit orci tempor tincidunt enim Phasellus dignissim tincidunt. Nunc vel et Sed nisl Vestibulum odio montes Aliquam volutpat pellentesque. Ut pede sagittis et quis nunc gravida porttitor ligula.
</footer><!-- .footer -->


<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/dashboard-united.js"></script>

</body>
</html>
