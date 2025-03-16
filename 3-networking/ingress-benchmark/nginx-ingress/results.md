$ ./ingress-benchmark/nginx-ingress/nginx-bm.sh
NGINX Ingress External IP: 9.223.152.37
Baseline load test...

Summary:
  Total:        30.0945 secs
  Slowest:      1.0480 secs
  Fastest:      0.0899 secs
  Average:      0.1381 secs
  Requests/sec: 36.0531
  
  Total data:   5381542 bytes
  Size/request: 4959 bytes

Response time histogram:
  0.090 [1]     |
  0.186 [1045]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.281 [35]    |■
  0.377 [0]     |
  0.473 [0]     |
  0.569 [0]     |
  0.665 [0]     |
  0.761 [2]     |
  0.856 [0]     |
  0.952 [0]     |
  1.048 [2]     |


Latency distribution:
  10% in 0.1085 secs
  25% in 0.1187 secs
  50% in 0.1319 secs
  75% in 0.1482 secs
  90% in 0.1652 secs
  95% in 0.1778 secs
  99% in 0.2445 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0899 secs, 1.0480 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0003 secs
  resp wait:    0.1374 secs, 0.0895 secs, 0.9947 secs
  resp read:    0.0004 secs, 0.0001 secs, 0.0275 secs

Status code distribution:
  [200] 1085 responses



Iteration 1: Scaling productpage deployment to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.0398 secs
  Slowest:      0.2701 secs
  Fastest:      0.0860 secs
  Average:      0.1210 secs
  Requests/sec: 41.1454

  Total data:   6130724 bytes
  Size/request: 4960 bytes

Response time histogram:
  0.086 [1]     |
  0.104 [264]   |■■■■■■■■■■■■■■■■■■■■■
  0.123 [506]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.141 [284]   |■■■■■■■■■■■■■■■■■■■■■■
  0.160 [114]   |■■■■■■■■■
  0.178 [37]    |■■■
  0.196 [17]    |■
  0.215 [5]     |
  0.233 [5]     |
  0.252 [2]     |
  0.270 [1]     |


Latency distribution:
  10% in 0.0975 secs
  25% in 0.1060 secs
  50% in 0.1171 secs
  75% in 0.1313 secs
  90% in 0.1495 secs
  95% in 0.1616 secs
  99% in 0.2026 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0860 secs, 0.2701 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1203 secs, 0.0858 secs, 0.2696 secs
  resp read:    0.0005 secs, 0.0001 secs, 0.0177 secs

Status code distribution:
  [200] 1236 responses



Scaling productpage deployment back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0998 secs
  Slowest:      0.2399 secs
  Fastest:      0.0852 secs
  Average:      0.1192 secs
  Requests/sec: 41.7611

  Total data:   6233894 bytes
  Size/request: 4959 bytes

Response time histogram:
  0.085 [1]     |
  0.101 [159]   |■■■■■■■■■■■■■
  0.116 [504]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.132 [318]   |■■■■■■■■■■■■■■■■■■■■■■■■■
  0.147 [173]   |■■■■■■■■■■■■■■
  0.163 [67]    |■■■■■
  0.178 [20]    |■■
  0.193 [10]    |■
  0.209 [3]     |
  0.224 [1]     |
  0.240 [1]     |


Latency distribution:
  10% in 0.0993 secs
  25% in 0.1061 secs
  50% in 0.1155 secs
  75% in 0.1284 secs
  90% in 0.1439 secs
  95% in 0.1538 secs
  99% in 0.1832 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0852 secs, 0.2399 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0001 secs
  resp wait:    0.1183 secs, 0.0849 secs, 0.2390 secs
  resp read:    0.0006 secs, 0.0001 secs, 0.0253 secs

Status code distribution:
  [200] 1257 responses



Iteration 2: Scaling productpage deployment to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.0970 secs
  Slowest:      0.2524 secs
  Fastest:      0.0863 secs
  Average:      0.1180 secs
  Requests/sec: 42.1969

  Total data:   6299668 bytes
  Size/request: 4960 bytes

Response time histogram:
  0.086 [1]     |
  0.103 [278]   |■■■■■■■■■■■■■■■■■■■■■■
  0.120 [517]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.136 [297]   |■■■■■■■■■■■■■■■■■■■■■■■
  0.153 [113]   |■■■■■■■■■
  0.169 [39]    |■■■
  0.186 [10]    |■
  0.203 [5]     |
  0.219 [4]     |
  0.236 [1]     |
  0.252 [5]     |


Latency distribution:
  10% in 0.0975 secs
  25% in 0.1046 secs
  50% in 0.1141 secs
  75% in 0.1271 secs
  90% in 0.1412 secs
  95% in 0.1530 secs
  99% in 0.1939 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0003 secs, 0.0863 secs, 0.2524 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1170 secs, 0.0861 secs, 0.2521 secs
  resp read:    0.0006 secs, 0.0000 secs, 0.0278 secs

Status code distribution:
  [200] 1270 responses



Scaling productpage deployment back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0708 secs
  Slowest:      0.7857 secs
  Fastest:      0.0860 secs
  Average:      0.1217 secs
  Requests/sec: 40.9035

  Total data:   6099988 bytes
  Size/request: 4959 bytes

Response time histogram:
  0.086 [1]     |
  0.156 [1140]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.226 [71]    |■■
  0.296 [5]     |
  0.366 [2]     |
  0.436 [1]     |
  0.506 [5]     |
  0.576 [3]     |
  0.646 [0]     |
  0.716 [0]     |
  0.786 [2]     |


Latency distribution:
  10% in 0.0977 secs
  25% in 0.1048 secs
  50% in 0.1128 secs
  75% in 0.1248 secs
  90% in 0.1443 secs
  95% in 0.1663 secs
  99% in 0.3142 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0860 secs, 0.7857 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1175 secs, 0.0857 secs, 0.5174 secs
  resp read:    0.0039 secs, 0.0000 secs, 0.6255 secs

Status code distribution:
  [200] 1230 responses



Iteration 3: Scaling productpage deployment to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.1175 secs
  Slowest:      0.5735 secs
  Fastest:      0.0866 secs
  Average:      0.1234 secs
  Requests/sec: 40.3088

  Total data:   6020288 bytes
  Size/request: 4959 bytes

Response time histogram:
  0.087 [1]     |
  0.135 [960]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.184 [217]   |■■■■■■■■■
  0.233 [30]    |■
  0.281 [2]     |
  0.330 [0]     |
  0.379 [0]     |
  0.427 [1]     |
  0.476 [2]     |
  0.525 [0]     |
  0.573 [1]     |


Latency distribution:
  10% in 0.0998 secs
  25% in 0.1073 secs
  50% in 0.1168 secs
  75% in 0.1320 secs
  90% in 0.1504 secs
  95% in 0.1713 secs
  99% in 0.2105 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0003 secs, 0.0866 secs, 0.5735 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1214 secs, 0.0863 secs, 0.5173 secs
  resp read:    0.0016 secs, 0.0001 secs, 0.3422 secs

Status code distribution:
  [200] 1214 responses



Scaling productpage deployment back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.1220 secs
  Slowest:      0.8686 secs
  Fastest:      0.0853 secs
  Average:      0.1261 secs
  Requests/sec: 39.5061

  Total data:   5904280 bytes
  Size/request: 4961 bytes

Response time histogram:
  0.085 [1]     |
  0.164 [1104]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.242 [60]    |■■
  0.320 [6]     |
  0.399 [5]     |
  0.477 [2]     |
  0.555 [3]     |
  0.634 [4]     |
  0.712 [2]     |
  0.790 [1]     |
  0.869 [2]     |


Latency distribution:
  10% in 0.0960 secs
  25% in 0.1035 secs
  50% in 0.1140 secs
  75% in 0.1283 secs
  90% in 0.1515 secs
  95% in 0.1781 secs
  99% in 0.5113 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0853 secs, 0.8686 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1196 secs, 0.0848 secs, 0.6792 secs
  resp read:    0.0062 secs, 0.0001 secs, 0.6933 secs

Status code distribution:
  [200] 1190 responses

Benchmark completed.
