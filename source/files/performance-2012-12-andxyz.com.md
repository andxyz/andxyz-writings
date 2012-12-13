$ ab -n1000 -c1 http://www.andxyz.com/ 
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking www.andxyz.com (be patient)
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


Server Software:        nginx
Server Hostname:        www.andxyz.com
Server Port:            80

Document Path:          /
Document Length:        184 bytes

Concurrency Level:      1
Time taken for tests:   55.977 seconds
Complete requests:      1000
Failed requests:        0
Write errors:           0
Non-2xx responses:      1000
Total transferred:      371000 bytes
HTML transferred:       184000 bytes
Requests per second:    17.86 [#/sec] (mean)
Time per request:       55.977 [ms] (mean)
Time per request:       55.977 [ms] (mean, across all concurrent requests)
Transfer rate:          6.47 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:       26   28   1.9     28      48
Processing:    26   28   2.1     28      48
Waiting:       25   28   2.1     27      48
Total:         52   56   2.9     55      77

Percentage of the requests served within a certain time (ms)
  50%     55
  66%     56
  75%     56
  80%     56
  90%     58
  95%     63
  98%     65
  99%     68
 100%     77 (longest request)

