$ ./ingress-benchmark/istio-ingress/istio-bm.sh
Istio Ingress External IP: 9.223.144.29
Starting baseline load test...

Summary:
  Total:        30.0740 secs
  Slowest:      0.3193 secs
  Fastest:      0.0846 secs
  Average:      0.1104 secs
  Requests/sec: 45.0556

  Total data:   6717530 bytes
  Size/request: 4957 bytes

Response time histogram:
  0.085 [1]     |
  0.108 [741]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.132 [483]   |■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.155 [80]    |■■■■
  0.178 [30]    |■■
  0.202 [12]    |■
  0.225 [4]     |
  0.249 [3]     |
  0.272 [0]     |
  0.296 [0]     |
  0.319 [1]     |


Latency distribution:
  10% in 0.0917 secs
  25% in 0.0979 secs
  50% in 0.1063 secs
  75% in 0.1173 secs
  90% in 0.1308 secs
  95% in 0.1481 secs
  99% in 0.1846 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0846 secs, 0.3193 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1096 secs, 0.0845 secs, 0.2349 secs
  resp read:    0.0006 secs, 0.0000 secs, 0.2128 secs

Status code distribution:
  [200] 1355 responses



Iteration 1: Scaling productpage deployment to 7 replicas...
deployment.apps/productpage-v1 scaled
Load test during scale-out...

Summary:
  Total:        30.0336 secs
  Slowest:      0.2057 secs
  Fastest:      0.0841 secs
  Average:      0.1093 secs
  Requests/sec: 45.4825
  
  Total data:   6782732 bytes
  Size/request: 4965 bytes

Response time histogram:
  0.084 [1]     |
  0.096 [272]   |■■■■■■■■■■■■■■■■■■■■
  0.108 [537]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.121 [295]   |■■■■■■■■■■■■■■■■■■■■■■
  0.133 [137]   |■■■■■■■■■■
  0.145 [60]    |■■■■
  0.157 [32]    |■■
  0.169 [16]    |■
  0.181 [5]     |
  0.194 [6]     |
  0.206 [5]     |


Latency distribution:
  10% in 0.0926 secs
  25% in 0.0978 secs
  50% in 0.1056 secs
  75% in 0.1151 secs
  90% in 0.1310 secs
  95% in 0.1445 secs
  99% in 0.1775 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0841 secs, 0.2057 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0001 secs
  resp wait:    0.1087 secs, 0.0840 secs, 0.2055 secs
  resp read:    0.0004 secs, 0.0000 secs, 0.0194 secs

Status code distribution:
  [200] 1366 responses



Scaling productpage deployment back to 5 replicas...
deployment.apps/productpage-v1 scaled
Load test during scale-in...

Summary:
  Total:        30.0764 secs
  Slowest:      0.2955 secs
  Fastest:      0.0845 secs
  Average:      0.1140 secs
  Requests/sec: 43.6222

  Total data:   6510964 bytes
  Size/request: 4962 bytes

Response time histogram:
  0.085 [1]     |
  0.106 [493]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.127 [611]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.148 [138]   |■■■■■■■■■
  0.169 [38]    |■■
  0.190 [11]    |■
  0.211 [8]     |■
  0.232 [2]     |
  0.253 [0]     |
  0.274 [6]     |
  0.295 [4]     |


Latency distribution:
  10% in 0.0950 secs
  25% in 0.1012 secs
  50% in 0.1094 secs
  75% in 0.1204 secs
  90% in 0.1346 secs
  95% in 0.1496 secs
  99% in 0.2052 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0845 secs, 0.2955 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0004 secs
  resp wait:    0.1133 secs, 0.0844 secs, 0.2951 secs
  resp read:    0.0004 secs, 0.0000 secs, 0.0365 secs

Status code distribution:
  [200] 1312 responses



Iteration 2: Scaling productpage deployment to 7 replicas...
deployment.apps/productpage-v1 scaled
Load test during scale-out...

Summary:
  Total:        30.3143 secs
  Slowest:      0.4609 secs
  Fastest:      0.0849 secs
  Average:      0.1115 secs
  Requests/sec: 44.2366

  Total data:   6660494 bytes
  Size/request: 4966 bytes

Response time histogram:
  0.085 [1]     |
  0.123 [1102]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.160 [192]   |■■■■■■■
  0.198 [32]    |■
  0.235 [3]     |
  0.273 [5]     |
  0.311 [3]     |
  0.348 [1]     |
  0.386 [0]     |
  0.423 [0]     |
  0.461 [2]     |


Latency distribution:
  10% in 0.0924 secs
  25% in 0.0976 secs
  50% in 0.1069 secs
  75% in 0.1175 secs
  90% in 0.1323 secs
  95% in 0.1472 secs
  99% in 0.2142 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0849 secs, 0.4609 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0003 secs
  resp wait:    0.1106 secs, 0.0848 secs, 0.3167 secs
  resp read:    0.0007 secs, 0.0000 secs, 0.3101 secs

Status code distribution:
  [200] 1341 responses



Scaling productpage deployment back to 5 replicas...
deployment.apps/productpage-v1 scaled
Load test during scale-in...

Summary:
  Total:        30.1000 secs
  Slowest:      0.3433 secs
  Fastest:      0.0844 secs
  Average:      0.1132 secs
  Requests/sec: 43.8538

  Total data:   6554324 bytes
  Size/request: 4965 bytes

Response time histogram:
  0.084 [1]     |
  0.110 [726]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.136 [458]   |■■■■■■■■■■■■■■■■■■■■■■■■■
  0.162 [90]    |■■■■■
  0.188 [27]    |■
  0.214 [7]     |
  0.240 [5]     |
  0.266 [4]     |
  0.292 [0]     |
  0.317 [1]     |
  0.343 [1]     |


Latency distribution:
  10% in 0.0935 secs
  25% in 0.1002 secs
  50% in 0.1089 secs
  75% in 0.1195 secs
  90% in 0.1365 secs
  95% in 0.1544 secs
  99% in 0.2006 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0844 secs, 0.3433 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1123 secs, 0.0842 secs, 0.3432 secs
  resp read:    0.0006 secs, 0.0000 secs, 0.1075 secs

Status code distribution:
  [200] 1320 responses



Iteration 3: Scaling productpage deployment to 7 replicas...
deployment.apps/productpage-v1 scaled
Load test during scale-out...

Summary:
  Total:        30.0666 secs
  Slowest:      0.4111 secs
  Fastest:      0.0846 secs
  Average:      0.1125 secs
  Requests/sec: 44.2019

  Total data:   6594990 bytes
  Size/request: 4962 bytes

Response time histogram:
  0.085 [1]     |
  0.117 [955]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.150 [302]   |■■■■■■■■■■■■■
  0.183 [53]    |■■
  0.215 [14]    |■
  0.248 [2]     |
  0.280 [1]     |
  0.313 [0]     |
  0.346 [0]     |
  0.378 [0]     |
  0.411 [1]     |


Latency distribution:
  10% in 0.0936 secs
  25% in 0.0995 secs
  50% in 0.1081 secs
  75% in 0.1188 secs
  90% in 0.1333 secs
  95% in 0.1518 secs
  99% in 0.1992 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0846 secs, 0.4111 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1118 secs, 0.0845 secs, 0.4110 secs
  resp read:    0.0003 secs, 0.0000 secs, 0.0286 secs

Status code distribution:
  [200] 1329 responses



Scaling productpage deployment back to 5 replicas...
deployment.apps/productpage-v1 scaled
Load test during scale-in...

Summary:
  Total:        30.3161 secs
  Slowest:      0.6271 secs
  Fastest:      0.0853 secs
  Average:      0.1163 secs
  Requests/sec: 42.5516

  Total data:   6362640 bytes
  Size/request: 4932 bytes

Response time histogram:
  0.085 [1]     |
  0.139 [1165]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.194 [104]   |■■■■
  0.248 [7]     |
  0.302 [2]     |
  0.356 [1]     |
  0.410 [0]     |
  0.465 [2]     |
  0.519 [4]     |
  0.573 [3]     |
  0.627 [1]     |


Latency distribution:
  10% in 0.0944 secs
  25% in 0.1007 secs
  50% in 0.1086 secs
  75% in 0.1200 secs
  90% in 0.1382 secs
  95% in 0.1619 secs
  99% in 0.3018 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0853 secs, 0.6271 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0003 secs
  resp wait:    0.1134 secs, 0.0850 secs, 0.5491 secs
  resp read:    0.0026 secs, 0.0000 secs, 0.4842 secs

Status code distribution:
  [200] 1290 responses

Benchmark completed.
