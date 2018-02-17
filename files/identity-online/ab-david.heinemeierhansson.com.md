$ ab -n1000 -c1 david.heinemeierhansson.com/
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking david.heinemeierhansson.com (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        nginx/0.7.65
Server Hostname:        david.heinemeierhansson.com
Server Port:            80

Document Path:          /
Document Length:        7952 bytes

Concurrency Level:      1
Time taken for tests:   228.941 seconds
Complete requests:      1000
Failed requests:        0
Write errors:           0
Total transferred:      8164000 bytes
HTML transferred:       7952000 bytes
Requests per second:    4.37 [#/sec] (mean)
Time per request:       228.941 [ms] (mean)
Time per request:       228.941 [ms] (mean, across all concurrent requests)
Transfer rate:          34.82 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:       70   77  60.2     73    1053
Processing:   143  152  73.4    145    1130
Waiting:       71   79  73.4     73    1057
Total:        214  229  94.7    218    1202

Percentage of the requests served within a certain time (ms)
  50%    218
  66%    219
  75%    220
  80%    221
  90%    226
  95%    228
  98%    232
  99%   1129
 100%   1202 (longest request)
 