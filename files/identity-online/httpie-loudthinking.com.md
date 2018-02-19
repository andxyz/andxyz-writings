```shell
$ http get loudthinking.com
HTTP/1.1 301 Moved Permanently
Connection: keep-alive
Content-Length: 185
Content-Type: text/html
Date: Thu, 13 Dec 2012 20:12:38 GMT
Location: http://david.heinemeierhansson.com/
Server: nginx/0.7.65
```

```html
<html>
<head><title>301 Moved Permanently</title></head>
<body bgcolor="white">
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/0.7.65</center>
</body>
</html>
```

```shell
$ http get loudthinking.com --follow --headers
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Cache-Control: max-age=600
Content-Encoding: gzip
Content-Type: text/html; charset=utf-8
Date: Sun, 18 Feb 2018 20:32:30 GMT
Expires: Sun, 18 Feb 2018 20:38:55 GMT
Last-Modified: Tue, 28 Nov 2017 17:59:14 GMT
Server: GitHub.com
Transfer-Encoding: chunked
Vary: Accept-Encoding
X-GitHub-Request-Id: C2E4:7FFF:3D64B8F:532B507:5A89E2DE
```
