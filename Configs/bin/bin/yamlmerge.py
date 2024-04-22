#!/usr/bin/python3
import sys

print("\n---\n".join(open(file, "rt").read() for file in sys.argv[1:]))
