# cpe315finalproj

link: https://docs.google.com/document/d/1-8Is0swFy-z3hj1Se6aFi6KM7V3Y9b9u5OFgxjjGphM/edit?usp=sharing

questions: 

1. If you are building a processor and have to do static branch prediction (meaning you have to assume at compile time whether a branch is taken or not), how should you do it? You can make a different decision for branches that go forward or backward.
2. If you are building a 256-byte direct-mapped cache, what should you choose as your block (line) size?
3. What conclusions can you draw about the differences between compiling with no optimization and -O2 optimization?

statistics:

Shang O0:

Total number of dynamic instructions: 1326980
Number of Memory Reads: 354001
Number of Memory Writes: 73058
Number of Register Reads: 2967987
Number of Register Writes: 2512287
Branches: 
  Forward:
    Taken: 9010
    Not taken: 461
  Backward:
    Taken: 41650
    Not taken: 9741
256 byte cache (blocksize 4 bytes): 377632 hits, 30243 misses (hit rate: 92.5852%)
256 byte cache (blocksize 8 bytes): 383482 hits, 24393 misses (hit rate: 94.0195%)
256 byte cache (blocksize 16 bytes): 382199 hits, 25676 misses (hit rate: 93.7049%)
256 byte cache (blocksize 32 bytes): 371018 hits, 36857 misses (hit rate: 90.9637%)
256 byte cache (blocksize 64 bytes): 347467 hits, 60408 misses (hit rate: 85.1896%)
256 byte cache (blocksize 128 bytes): 296780 hits, 111095 misses (hit rate: 72.7625%)
256 byte cache (blocksize 256 bytes): 242527 hits, 165348 misses (hit rate: 59.4611%)

Shang O1:

Total number of dynamic instructions: 305135
Number of Memory Reads: 45582
Number of Memory Writes: 28950
Number of Register Reads: 727978
Number of Register Writes: 521319
Branches: 
  Forward:
    Taken: 8651
    Not taken: 11220
  Backward:
    Taken: 37569
    Not taken: 1681
256 byte cache (blocksize 4 bytes): 52096 hits, 22354 misses (hit rate: 69.9745%)
256 byte cache (blocksize 8 bytes): 59712 hits, 14738 misses (hit rate: 80.2042%)
256 byte cache (blocksize 16 bytes): 62343 hits, 12107 misses (hit rate: 83.7381%)
256 byte cache (blocksize 32 bytes): 63907 hits, 10543 misses (hit rate: 85.8388%)
256 byte cache (blocksize 64 bytes): 63320 hits, 11130 misses (hit rate: 85.0504%)
256 byte cache (blocksize 128 bytes): 47661 hits, 26789 misses (hit rate: 64.0175%)
256 byte cache (blocksize 256 bytes): 11798 hits, 62652 misses (hit rate: 15.8469%)

Shang O2:

Total number of dynamic instructions: 261935
Number of Memory Reads: 44342
Number of Memory Writes: 27710
Number of Register Reads: 613428
Number of Register Writes: 439949
Branches: 
  Forward:
    Taken: 8001
    Not taken: 5210
  Backward:
    Taken: 39109
    Not taken: 1801
256 byte cache (blocksize 4 bytes): 49918 hits, 22052 misses (hit rate: 69.3595%)
256 byte cache (blocksize 8 bytes): 57560 hits, 14410 misses (hit rate: 79.9778%)
256 byte cache (blocksize 16 bytes): 60231 hits, 11739 misses (hit rate: 83.689%)
256 byte cache (blocksize 32 bytes): 61685 hits, 10285 misses (hit rate: 85.7093%)
256 byte cache (blocksize 64 bytes): 60971 hits, 10999 misses (hit rate: 84.7172%)
256 byte cache (blocksize 128 bytes): 45232 hits, 26738 misses (hit rate: 62.8484%)
256 byte cache (blocksize 256 bytes): 9715 hits, 62255 misses (hit rate: 13.4987%)
