#!/usr/bin/env python3

import sys

current_page = None
current_count = 0

for line in sys.stdin:
    page, count = line.strip().split("\t")
    count = int(count)

    if current_page == page:
        current_count += count
    else:
        if current_page:
            print(f"{current_page}\t{current_count}")

        current_page = page
        current_count = count

if current_page:
    print(f"{current_page}\t{current_count}")
