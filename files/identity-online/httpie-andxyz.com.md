~/code$ http get andxyz.com --headers
HTTP/1.1 200 OK
Cache-Control: max-age=86400
Connection: keep-alive
Content-Encoding: gzip
Content-Type: text/html
Date: Thu, 13 Dec 2012 20:09:11 GMT
Expires: Fri, 14 Dec 2012 20:09:11 GMT
Last-Modified: Sun, 09 Dec 2012 18:45:36 GMT
Server: nginx
Transfer-Encoding: chunked

$ http get https://andxyz.com --headers
HTTP/1.1 200 OK
CF-RAY: 3ef3b38fcb303042-YYZ
Cache-Control: max-age=86400
Connection: keep-alive
Content-Encoding: gzip
Content-Type: text/html
Date: Sun, 18 Feb 2018 20:22:57 GMT
Expect-CT: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
Expires: Mon, 19 Feb 2018 20:22:57 GMT
Last-Modified: Sat, 17 Feb 2018 09:51:26 GMT
Server: cloudflare
Set-Cookie: __cfduid=d59c00f305f5ef503cdd2d7bb57bde2e31518985377; expires=Mon, 18-Feb-19 20:22:57 GMT; path=/; domain=.andxyz.com; HttpOnly; Secure
Strict-Transport-Security: max-age=0
Transfer-Encoding: chunked
X-Content-Type-Options: nosniff
