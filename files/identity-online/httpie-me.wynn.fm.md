$ http get me.wynn.fm --header
HTTP/1.1 200 OK
Cache-Control: max-age=600
Connection: keep-alive
Content-Encoding: gzip
Content-Type: text/html
Date: Thu, 18 Apr 2013 04:52:34 GMT
Expires: Thu, 18 Apr 2013 05:02:34 GMT
Last-Modified: Sun, 06 Jan 2013 19:48:53 GMT
Server: GitHub.com
Transfer-Encoding: chunked
Vary: Accept-Encoding

$ http get wynn.fm --follow --headers
HTTP/1.1 200 OK
Age: 74616
Cache-Control: public, max-age=0, must-revalidate
Connection: keep-alive
Content-Encoding: gzip
Content-Length: 977
Content-Type: text/html; charset=UTF-8
Date: Sun, 18 Feb 2018 23:31:17 GMT
Etag: "e933b1c75eac66620a7bfa8699183e22-ssl-df"
Server: Netlify
Strict-Transport-Security: max-age=31536000
Vary: Accept-Encoding
