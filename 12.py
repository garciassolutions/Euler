#!/usr/bin/python

for i in range(3000,50000):
  divs=1
  tri = i*(i+1)/2
  for p in range(2, tri):
    if tri % p == 0:
      divs = divs+1
  if divs >= 499:
    print "Trip is:", tri
    break
