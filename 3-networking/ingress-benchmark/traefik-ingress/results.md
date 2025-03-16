$ ./ingress-benchmark/traefik-ingress/traefik-bm.sh 
Traefik Ingress External IP: 9.223.136.12
Baseline load test...

Summary:
  Total:        30.0886 secs
  Slowest:      2.3012 secs
  Fastest:      0.0853 secs
  Average:      0.1393 secs
  Requests/sec: 35.7279
  
  Total data:   5331618 bytes
  Size/request: 4959 bytes

Response time histogram:
  0.085 [1]     |
  0.307 [1068]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.529 [1]     |
  0.750 [0]     |
  0.972 [0]     |
  1.193 [0]     |
  1.415 [0]     |
  1.636 [0]     |
  1.858 [0]     |
  2.080 [2]     |
  2.301 [3]     |


Latency distribution:
  10% in 0.0974 secs
  25% in 0.1058 secs
  50% in 0.1201 secs
  75% in 0.1441 secs
  90% in 0.1729 secs
  95% in 0.2102 secs
  99% in 0.2760 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0003 secs, 0.0853 secs, 2.3012 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1387 secs, 0.0852 secs, 2.2461 secs
  resp read:    0.0003 secs, 0.0001 secs, 0.0044 secs

Status code distribution:
  [200] 1075 responses

Iteration 1: Scaling productpage-v1 to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.0572 secs
  Slowest:      0.2769 secs
  Fastest:      0.0850 secs
  Average:      0.1152 secs
  Requests/sec: 43.2175

  Total data:   6441182 bytes
  Size/request: 4958 bytes

Response time histogram:
  0.085 [1]     |
  0.104 [435]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.123 [551]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.143 [193]   |■■■■■■■■■■■■■■
  0.162 [68]    |■■■■■
  0.181 [27]    |■■
  0.200 [6]     |
  0.219 [14]    |■
  0.239 [2]     |
  0.258 [0]     |
  0.277 [2]     |


Latency distribution:
  10% in 0.0949 secs
  25% in 0.1009 secs
  50% in 0.1099 secs
  75% in 0.1229 secs
  90% in 0.1409 secs
  95% in 0.1568 secs
  99% in 0.2053 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0850 secs, 0.2769 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0004 secs
  resp wait:    0.1147 secs, 0.0848 secs, 0.2765 secs
  resp read:    0.0003 secs, 0.0001 secs, 0.0158 secs

Status code distribution:
  [200] 1299 responses



Scaling productpage-v1 back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0912 secs
  Slowest:      0.2159 secs
  Fastest:      0.0846 secs
  Average:      0.1126 secs
  Requests/sec: 44.1658

  Total data:   6585958 bytes
  Size/request: 4955 bytes

Response time histogram:
  0.085 [1]     |
  0.098 [289]   |■■■■■■■■■■■■■■■■■■■■■■■■■
  0.111 [457]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.124 [295]   |■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.137 [165]   |■■■■■■■■■■■■■■
  0.150 [59]    |■■■■■
  0.163 [31]    |■■■
  0.177 [17]    |■
  0.190 [6]     |■
  0.203 [3]     |
  0.216 [6]     |■


Latency distribution:
  10% in 0.0935 secs
  25% in 0.0990 secs
  50% in 0.1087 secs
  75% in 0.1218 secs
  90% in 0.1358 secs
  95% in 0.1483 secs
  99% in 0.1789 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0004 secs, 0.0846 secs, 0.2159 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1119 secs, 0.0843 secs, 0.2091 secs
  resp read:    0.0003 secs, 0.0001 secs, 0.0155 secs

Status code distribution:
  [200] 1329 responses



Iteration 2: Scaling productpage-v1 to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.0870 secs
  Slowest:      0.2159 secs
  Fastest:      0.0850 secs
  Average:      0.1122 secs
  Requests/sec: 44.3049

  Total data:   6617122 bytes
  Size/request: 4964 bytes

Response time histogram:
  0.085 [1]     |
  0.098 [348]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.111 [438]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.124 [288]   |■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.137 [118]   |■■■■■■■■■■■
  0.150 [66]    |■■■■■■
  0.164 [22]    |■■
  0.177 [23]    |■■
  0.190 [12]    |■
  0.203 [9]     |■
  0.216 [8]     |■


Latency distribution:
  10% in 0.0915 secs
  25% in 0.0977 secs
  50% in 0.1073 secs
  75% in 0.1205 secs
  90% in 0.1382 secs
  95% in 0.1564 secs
  99% in 0.1981 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0850 secs, 0.2159 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1116 secs, 0.0847 secs, 0.2156 secs
  resp read:    0.0003 secs, 0.0000 secs, 0.0044 secs

Status code distribution:
  [200] 1333 responses



Scaling productpage-v1 back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0825 secs
  Slowest:      0.2492 secs
  Fastest:      0.0839 secs
  Average:      0.1081 secs
  Requests/sec: 45.9404

  Total data:   6849476 bytes
  Size/request: 4956 bytes

Response time histogram:
  0.084 [1]     |
  0.100 [546]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.117 [511]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.133 [209]   |■■■■■■■■■■■■■■■
  0.150 [63]    |■■■■■
  0.167 [26]    |■■
  0.183 [17]    |■
  0.200 [6]     |
  0.216 [2]     |
  0.233 [0]     |
  0.249 [1]     |


Latency distribution:
  10% in 0.0896 secs
  25% in 0.0948 secs
  50% in 0.1043 secs
  75% in 0.1159 secs
  90% in 0.1298 secs
  95% in 0.1426 secs
  99% in 0.1778 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0003 secs, 0.0839 secs, 0.2492 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0001 secs
  resp wait:    0.1075 secs, 0.0837 secs, 0.2490 secs
  resp read:    0.0003 secs, 0.0001 secs, 0.0122 secs

Status code distribution:
  [200] 1382 responses



Iteration 3: Scaling productpage-v1 to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.1137 secs
  Slowest:      0.2428 secs
  Fastest:      0.0841 secs
  Average:      0.1124 secs
  Requests/sec: 44.1991

  Total data:   6604534 bytes
  Size/request: 4962 bytes

Response time histogram:
  0.084 [1]     |
  0.100 [323]   |■■■■■■■■■■■■■■■■■■■■■■
  0.116 [582]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.132 [274]   |■■■■■■■■■■■■■■■■■■■
  0.148 [91]    |■■■■■■
  0.163 [22]    |■■
  0.179 [21]    |■
  0.195 [10]    |■
  0.211 [0]     |
  0.227 [5]     |
  0.243 [2]     |


Latency distribution:
  10% in 0.0943 secs
  25% in 0.1002 secs
  50% in 0.1084 secs
  75% in 0.1199 secs
  90% in 0.1337 secs
  95% in 0.1465 secs
  99% in 0.1864 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0841 secs, 0.2428 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1118 secs, 0.0837 secs, 0.2426 secs
  resp read:    0.0003 secs, 0.0001 secs, 0.0202 secs

Status code distribution:
  [200] 1331 responses



Scaling productpage-v1 back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0959 secs
  Slowest:      0.4811 secs
  Fastest:      0.0831 secs
  Average:      0.1124 secs
  Requests/sec: 44.1589

  Total data:   6587970 bytes
  Size/request: 4957 bytes

Response time histogram:
  0.083 [1]     |
  0.123 [1033]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.163 [256]   |■■■■■■■■■■
  0.202 [30]    |■
  0.242 [5]     |
  0.282 [3]     |
  0.322 [0]     |
  0.362 [0]     |
  0.401 [0]     |
  0.441 [0]     |
  0.481 [1]     |


Latency distribution:
  10% in 0.0911 secs
  25% in 0.0964 secs
  50% in 0.1081 secs
  75% in 0.1210 secs
  90% in 0.1394 secs
  95% in 0.1523 secs
  99% in 0.1954 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0831 secs, 0.4811 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1118 secs, 0.0827 secs, 0.4809 secs
  resp read:    0.0004 secs, 0.0001 secs, 0.0212 secs

Status code distribution:
  [200] 1329 responses

Benchmark completed.
