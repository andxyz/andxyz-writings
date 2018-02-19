~/Code$ http get david.heinemeierhansson.com --headers
HTTP/1.1 200 OK
Connection: keep-alive
Content-Encoding: gzip
Content-Type: text/html
Date: Thu, 13 Dec 2012 21:56:20 GMT
ETag: "50081a9d-2e21-72079"
Last-Modified: Thu, 19 Jul 2012 14:33:01 GMT
Server: nginx/0.7.65
Transfer-Encoding: chunked

~/Code$ curl -Lk -I https://david.heinemeierhansson.com
HTTP/1.1 200 OK
Server: GitHub.com
Date: Sun, 18 Feb 2018 20:28:44 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 10268
Vary: Accept-Encoding
Last-Modified: Tue, 28 Nov 2017 17:59:14 GMT
Vary: Accept-Encoding
Access-Control-Allow-Origin: *
Expires: Sun, 18 Feb 2018 20:34:51 GMT
Cache-Control: max-age=600
Accept-Ranges: bytes
X-GitHub-Request-Id: C299:7FFF:3D612CC:5326AA5:5A89E1FC
