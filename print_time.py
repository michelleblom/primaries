import sys
import io

with open(sys.argv[1], "r") as f:
    lines = f.readlines()
    for l in lines:
        if l.startswith("TIME,"):
            toks = l.strip().split(',')
            print("{}".format(toks[1]))
