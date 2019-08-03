<?php session_start();
session_cache_limiter("private, must-revalidate");
header("Content-type: image/" . $type);
srand((double)microtime() * 1000000);
$str = numstr(4);
$_SESSION['backValidate'] = $str;
if (function_exists("Imagepng")) {
	$type = 'png';
} else if (function_exists("Imagejpeg")) {
	$type = 'jpeg';
} else {
	$type = 'gif';
}
$width = 50;
$height = 20;
$im = imagecreate($width, $height);
$black = ImageColorAllocate($im, 0, 0, 0);
$white = ImageColorAllocate($im, 255, 255, 255);
$gray = ImageColorAllocate($im, 200, 200, 200);
imagefilledrectangle($im, 0, 0, $width - 1, $height - 1, $gray);
imagecolortransparent($im, $gray);
imagestring($im, 5, 9, 5, $str, $black);
$ImageFun = 'Image' . $type;
$ImageFun($im);
ImageDestroy($im);
function mystr($length)
{
	$str = '';
	for ($i = 0; $i < $length; $i++) {
		$rand = mt_rand(1, 35);
		if ($rand < 10) $str .= $rand; else if (chr($rand + 87) != "o") $str .= chr($rand + 87);
	}
	return $str;
}

function numstr($length)
{
	$str = '';
	for ($i = 0; $i < $length; $i++) {
		$rand = mt_rand(0, 9);
		$str .= $rand;
	}
	return $str;
} ?>