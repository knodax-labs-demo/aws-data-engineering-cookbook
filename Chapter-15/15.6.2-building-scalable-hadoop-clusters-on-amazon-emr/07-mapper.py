#!/usr/bin/env python3

import sys

for line in sys.stdin:
    parts = line.strip().split()

    if len(parts) >= 2:
        page = parts[2]
        print(f"{page}\t1")
