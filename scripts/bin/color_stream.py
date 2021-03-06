#!/usr/bin/env python3

def string_to_rgb(s):
    res =  [int(s[i:i+2],16) for i in range(1,len(s),2)]
    return res

def rgb_to_string(lis):
    res = "#"
    for item in lis:
        res += "%02x" % item
    return res

def fade(astr,bstr,n):
    a = string_to_rgb(astr)
    b = string_to_rgb(bstr)
    if len(a) == 4:
        step = [0]
    else:
        step = []
    step += [(b[i] - a[i])/n for i in range(len(a)-3, len(a))]
    for _ in range(n-1):
        a=[sum(x) for x in zip(a,step)]
        print(rgb_to_string([int(e) for e in a]))
    print(rgb_to_string(b))


def main():
    import sys
    num_args = len(sys.argv)
    if num_args <= 2:
        print("please provide at least {} more color(s) in #RRGGBB format".format(3-num_args))
    colors = sys.argv[1:]
    for i in range(1,len(colors)):
        fade(colors[i-1],colors[i],16)


if __name__ == "__main__":
    main()

