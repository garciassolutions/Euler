fib = [0, 1]
for i in range(10000):
  if len(str(fib[-2]+fib[-1])) == 1000:
#    print "Fib number is", (fib[-2]+fib[-1])
    print i+2
    break
  fib.append(fib[-2]+fib[-1])
  