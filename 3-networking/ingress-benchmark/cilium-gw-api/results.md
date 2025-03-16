$ ./../ingress-benchmark/cilium-gw-api/cilium-bm.sh
Cilium Gateway External IP: 9.223.137.142
Baseline load test...

Summary:
  Total:        30.1010 secs
  Slowest:      0.4867 secs
  Fastest:      0.0872 secs
  Average:      0.1278 secs
  Requests/sec: 38.9356
  
  Total data:   5824972 bytes
  Size/request: 4970 bytes

Response time histogram:
  0.087 [1]     |
  0.127 [753]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.167 [311]   |■■■■■■■■■■■■■■■■■
  0.207 [71]    |■■■■
  0.247 [19]    |■
  0.287 [10]    |■
  0.327 [3]     |
  0.367 [1]     |
  0.407 [2]     |
  0.447 [0]     |
  0.487 [1]     |


Latency distribution:
  10% in 0.0996 secs
  25% in 0.1073 secs
  50% in 0.1190 secs
  75% in 0.1367 secs
  90% in 0.1653 secs
  95% in 0.1908 secs
  99% in 0.2755 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0872 secs, 0.4867 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0003 secs
  resp wait:    0.1268 secs, 0.0870 secs, 0.3751 secs
  resp read:    0.0007 secs, 0.0000 secs, 0.3255 secs

Status code distribution:
  [200] 1172 responses



Iteration 1: Scaling productpage-v1 to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.1146 secs
  Slowest:      0.2516 secs
  Fastest:      0.0869 secs
  Average:      0.1177 secs
  Requests/sec: 42.3051

  Total data:   6302816 bytes
  Size/request: 4947 bytes

Response time histogram:
  0.087 [1]     |
  0.103 [271]   |■■■■■■■■■■■■■■■■■■■
  0.120 [569]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.136 [256]   |■■■■■■■■■■■■■■■■■■
  0.153 [105]   |■■■■■■■
  0.169 [33]    |■■
  0.186 [21]    |■
  0.202 [7]     |
  0.219 [7]     |
  0.235 [3]     |
  0.252 [1]     |


Latency distribution:
  10% in 0.0987 secs
  25% in 0.1044 secs
  50% in 0.1127 secs
  75% in 0.1248 secs
  90% in 0.1422 secs
  95% in 0.1563 secs
  99% in 0.2007 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0869 secs, 0.2516 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0001 secs
  resp wait:    0.1172 secs, 0.0866 secs, 0.2513 secs
  resp read:    0.0003 secs, 0.0000 secs, 0.0244 secs

Status code distribution:
  [200] 1274 responses



Scaling productpage-v1 back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0629 secs
  Slowest:      0.4339 secs
  Fastest:      0.0859 secs
  Average:      0.1113 secs
  Requests/sec: 44.6730

  Total data:   6651142 bytes
  Size/request: 4952 bytes

Response time histogram:
  0.086 [1]     |
  0.121 [1052]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.155 [249]   |■■■■■■■■■
  0.190 [38]    |■
  0.225 [2]     |
  0.260 [0]     |
  0.295 [0]     |
  0.329 [0]     |
  0.364 [0]     |
  0.399 [0]     |
  0.434 [1]     |


Latency distribution:
  10% in 0.0934 secs
  25% in 0.0995 secs
  50% in 0.1075 secs
  75% in 0.1187 secs
  90% in 0.1315 secs
  95% in 0.1454 secs
  99% in 0.1716 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0003 secs, 0.0859 secs, 0.4339 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0002 secs
  resp wait:    0.1105 secs, 0.0854 secs, 0.1848 secs
  resp read:    0.0005 secs, 0.0000 secs, 0.2814 secs

Status code distribution:
  [200] 1343 responses



Iteration 2: Scaling productpage-v1 to 7 replicas...
deployment.apps/productpage-v1 scaled
Waiting for deployment "productpage-v1" rollout to finish: 6 of 7 updated replicas are available...
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.0594 secs
  Slowest:      0.3023 secs
  Fastest:      0.0906 secs
  Average:      0.1159 secs
  Requests/sec: 42.9483

  Total data:   6394782 bytes
  Size/request: 4953 bytes

Response time histogram:
  0.091 [1]     |
  0.112 [690]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.133 [437]   |■■■■■■■■■■■■■■■■■■■■■■■■■
  0.154 [90]    |■■■■■
  0.175 [48]    |■■■
  0.196 [14]    |■
  0.218 [9]     |■
  0.239 [1]     |
  0.260 [0]     |
  0.281 [0]     |
  0.302 [1]     |


Latency distribution:
  10% in 0.0982 secs
  25% in 0.1036 secs
  50% in 0.1106 secs
  75% in 0.1230 secs
  90% in 0.1387 secs
  95% in 0.1561 secs
  99% in 0.1915 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0906 secs, 0.3023 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0005 secs
  resp wait:    0.1153 secs, 0.0904 secs, 0.3014 secs
  resp read:    0.0003 secs, 0.0000 secs, 0.0108 secs

Status code distribution:
  [200] 1291 responses



Scaling productpage-v1 back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0455 secs
  Slowest:      0.2460 secs
  Fastest:      0.0847 secs
  Average:      0.1106 secs
  Requests/sec: 44.9652

  Total data:   6693374 bytes
  Size/request: 4954 bytes

Response time histogram:
  0.085 [1]     |
  0.101 [452]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.117 [549]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.133 [226]   |■■■■■■■■■■■■■■■■
  0.149 [58]    |■■■■
  0.165 [32]    |■■
  0.181 [13]    |■
  0.198 [9]     |■
  0.214 [3]     |
  0.230 [4]     |
  0.246 [4]     |


Latency distribution:
  10% in 0.0926 secs
  25% in 0.0979 secs
  50% in 0.1060 secs
  75% in 0.1175 secs
  90% in 0.1311 secs
  95% in 0.1487 secs
  99% in 0.1951 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0004 secs, 0.0847 secs, 0.2460 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0001 secs
  resp wait:    0.1098 secs, 0.0845 secs, 0.2294 secs
  resp read:    0.0003 secs, 0.0000 secs, 0.0902 secs

Status code distribution:
  [200] 1351 responses



Iteration 3: Scaling productpage-v1 to 7 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-out...

Summary:
  Total:        30.0219 secs
  Slowest:      0.2283 secs
  Fastest:      0.0879 secs
  Average:      0.1138 secs
  Requests/sec: 43.7680

  Total data:   6534552 bytes
  Size/request: 4973 bytes

Response time histogram:
  0.088 [1]     |
  0.102 [329]   |■■■■■■■■■■■■■■■■■■■■■■■■
  0.116 [551]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.130 [272]   |■■■■■■■■■■■■■■■■■■■■
  0.144 [80]    |■■■■■■
  0.158 [24]    |■■
  0.172 [27]    |■■
  0.186 [9]     |■
  0.200 [10]    |■
  0.214 [4]     |
  0.228 [7]     |■


Latency distribution:
  10% in 0.0967 secs
  25% in 0.1019 secs
  50% in 0.1088 secs
  75% in 0.1198 secs
  90% in 0.1339 secs
  95% in 0.1511 secs
  99% in 0.1971 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0879 secs, 0.2283 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0001 secs
  resp wait:    0.1132 secs, 0.0876 secs, 0.2249 secs
  resp read:    0.0004 secs, 0.0000 secs, 0.0555 secs

Status code distribution:
  [200] 1314 responses



Scaling productpage-v1 back to 5 replicas...
deployment.apps/productpage-v1 scaled
deployment "productpage-v1" successfully rolled out
Load test during scale-in...

Summary:
  Total:        30.0883 secs
  Slowest:      0.2411 secs
  Fastest:      0.0860 secs
  Average:      0.1162 secs
  Requests/sec: 42.7740

  Total data:   6370630 bytes
  Size/request: 4949 bytes

Response time histogram:
  0.086 [1]     |
  0.102 [356]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.117 [496]   |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  0.133 [209]   |■■■■■■■■■■■■■■■■■
  0.148 [101]   |■■■■■■■■
  0.164 [45]    |■■■■
  0.179 [42]    |■■■
  0.195 [20]    |■■
  0.210 [8]     |■
  0.226 [5]     |
  0.241 [4]     |


Latency distribution:
  10% in 0.0951 secs
  25% in 0.1003 secs
  50% in 0.1093 secs
  75% in 0.1236 secs
  90% in 0.1470 secs
  95% in 0.1670 secs
  99% in 0.2036 secs

Details (average, fastest, slowest):
  DNS+dialup:   0.0002 secs, 0.0860 secs, 0.2411 secs
  DNS-lookup:   0.0000 secs, 0.0000 secs, 0.0000 secs
  req write:    0.0000 secs, 0.0000 secs, 0.0004 secs
  resp wait:    0.1156 secs, 0.0859 secs, 0.2407 secs
  resp read:    0.0003 secs, 0.0000 secs, 0.0431 secs

Status code distribution:
  [200] 1287 responses

Benchmark completed.
