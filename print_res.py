import sys
import io

with open(sys.argv[1], "r") as f:
    lines = f.readlines()
    for l in lines:
        if l.startswith("EST"):
            toks = l.strip().split(',')
            print("{},{}".format(toks[1],toks[2]))
