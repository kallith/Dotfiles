#!/usr/bin/env python3
import sys
    
def string_to_rgb(s):
    return [int(s[i:i+2],16) for i in range(1,len(s),2)]

def rgb_to_string(lis):
    res = "#CD"
    for item in lis:
        res += "%02x" % item
    return res

def fade(astr,bstr,n):
    a = string_to_rgb(astr)
    b = string_to_rgb(bstr)
    step = [(b[i] - a[i])/n for i in range(len(a))]
    for _ in range(n-1):
        a=[sum(x) for x in zip(a,step)]
        print(rgb_to_string([int(e) for e in a]))
    print(rgb_to_string(b))


def main():
    if len(sys.argv) <= 2:
        print("please provide more colors in #RRGGBB format")
    colors = sys.argv[1:]
    for i in range(1,len(colors)):
        fade(colors[i-1],colors[i],16)


if __name__ == "__main__":
    main()

