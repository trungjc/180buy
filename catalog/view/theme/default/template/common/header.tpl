<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<!--[if IE]>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
<![endif]--> 
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/cloud-zoom.1.0.2.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/cloud-zoom.css" />

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
<script type="text/javascript">

function FloatTopDiv()
{ startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBoxW-LeftAdjust , startLY = TopAdjust+80; startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80; var d = document; function ml(id)
{ var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';}; el.x = startRX; el.y = startRY; return el;}
function m2(id)
{ var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y +9+ 'px';}; e2.x = startLX; e2.y = startLY; return e2;}
window.stayTopLeft=function()
{ if (document.documentElement && document.documentElement.scrollTop)
var pY = document.documentElement.scrollTop; else if (document.body)
var pY = document.body.scrollTop; if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else {startLY = TopAdjust;startRY = TopAdjust;}; ftlObj.y += (pY+startRY-ftlObj.y)/16; ftlObj.sP(ftlObj.x, ftlObj.y); ftlObj2.y += (pY+startLY-ftlObj2.y)/16; ftlObj2.sP(ftlObj2.x, ftlObj2.y); setTimeout("stayTopLeft()", 1);}
ftlObj = ml("banner2"); ftlObj2 = m2("banner0"); stayTopLeft();}
function ShowAdDiv()

{
	
var objAdDivRight = $("#banner2");var objAdDivLeft = $("#banner0"); 
if (document.body.clientWidth < (MainContentW+LeftBoxW+RightBoxW))
{ objAdDivRight.hide();objAdDivLeft.hide();}
else
{ objAdDivRight.show();objAdDivLeft.show();
FloatTopDiv();
}
}
var MainContentW = 1000;
var LeftBoxW = 100;
var RightBoxW = 100;
var LeftAdjust = 0;
var RightAdjust = 0;
var TopAdjust = 117;
window.onresize=ShowAdDiv;
</script>
<!-- Start Ads Floating -->

</head>
<body>
<div class="topbox">
	<div class="container">
    <div class="menutop">
        <ul>
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>/</li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>/</li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
    </div>
    <div id="welcome">
        <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
        <?php } else { ?>
        <?php echo $text_logged; ?>
        <?php } ?>
      </div>
    </div>
  </div>
  <!--$url=$_SERVER['HTTP_REFERER'];
$host=$_SERVER['HTTP_HOST'];-->
<?php
global $_SERVER;
$path=$_SERVER['REQUEST_URI'];
$bka=$path;
$pos = strpos($bka, 'home')
?>

<div id="container" class="<?php if ($pos == true || $path=='/180buy/' ) {
    echo 'homepage';
} ?>" >

<div id="header">

  <?php if ($logo) { ?>
  
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php if (count($languages) > 1) { ?>
  <form  action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="language"><?php echo $text_language; ?><br />
      <?php foreach ($languages as $language) { ?>
      &nbsp;<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();" />
      <?php } ?>
      <input type="hidden" name="language_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
  </form>
  <?php } ?>
  <?php if (count($currencies) > 1) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="currency" style="display:none"><?php echo $text_currency; ?><br />
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['code'] == $currency_code) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?></b></a>
      <?php } else { ?>
      <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b></a>
      <?php } ?>
      <?php } else { ?>
      <?php if ($currency['symbol_left']) { ?>
      <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_left']; ?></a>
      <?php } else { ?>
      <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_right']; ?></a>
      <?php } ?>
      <?php } ?>
      <?php } ?>
      <input type="hidden" name="currency_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
  </form>
  <?php } ?>
  <div id="cart">
    <div class="heading">
      <h4><?php echo $text_cart; ?></h4>
      <a><span id="cart_total"><?php echo $text_items; ?></span></a></div>
    <div class="content"></div>
  </div>
  <div id="search">
    <div class="button-search"></div>
    <?php if ($filter_name) { ?>
    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
    <?php } else { ?>
    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
    <?php } ?>
  </div>
 
  <div class="links"><a href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
<div id="menu">
    <ul>
            <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
    </ul>
</div>
<div id="notification"></div>
