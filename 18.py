#!/usr/bin/python

tri_lst = []

def find_max(x, y):
  tmp = tmp2 = 0
  if(x+1 != len(tri_lst)):
    tmp = int(tri_lst[x][y]) + find_max(x+1, y)
    if(y+1 != len(tri_lst[x+1])):
      tmp2 = int(tri_lst[x][y]) + find_max(x+1, y+1)
    if tmp > tmp2:
      sum = tmp
    else:
      sum = tmp2
    return sum
  return int(tri_lst[x][y])

tri_in = open('tri.txt')
for line in tri_in:
  line = line.strip()
  tri_lst.append(line.split(" "))
tri_in.close()

print find_max(0, 0)
