<?php
# Example receiver of Scrup files
#
# Install by putting this file on your web server and give the web server 
# user write permissions to the directory in which you put this script.
#
$MAXLENGTH = 4096000; # 4 MB
function rsperr($msg='', $st='400 Bad Request') {
	header('HTTP/1.1 '.$st);
	exit($msg);	
}
function pathfromid($id) {
	return substr($id,2).'.png';
}
# Build path and url
if (!isset($_GET['name']) || !trim($_GET['name']))
	$_GET['name'] = strval(time());
$id = substr(base_convert(md5($_GET['name'].' '.$_SERVER['REMOTE_ADDR']), 16, 36),0,15);
$path = pathfromid($id);
$abspath = dirname(realpath(__FILE__)).'/'.$path;
$url = (isset($_SERVER['HTTPS']) ? 'https://' : 'http://')
	. $_SERVER['SERVER_NAME'] . dirname($_SERVER['SCRIPT_NAME']) . '/' . $path;

# Save input to file
$dstf = @fopen($abspath, 'w');
if (!$dstf)
	rsperr('unable to write to '.$dirpath, '500 Internal Server Error');
$srcf = fopen('php://input', 'r');
$size = stream_copy_to_stream($srcf, $dstf, $MAXLENGTH);
fclose($dstf);

# No input?
if ($size === 0) {
	@unlink($path);
	rsperr('empty input');
}
elseif ($size >= $MAXLENGTH) {
	@unlink($path); # because it's probably broken
	rsperr('Request entity larger than or equal to '.$MAXLENGTH.' B',
		'413 Request Entity Too Large');
}

# Respond with the url
header('HTTP/1.1 201 Created');
header('Content-Type: text/plain; charset=utf-8');
header('Content-Length: '.strlen($url));
echo $url;
?>
