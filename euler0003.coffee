fibo = (max) -> 
  seq = [n1=1,n2=1]
  while n1+n2 < max
    seq.push(n1+n2)
    n2 += n1
    n1 = n2-n1
  return seq

console.log (x for x in fibo 4000000 when x%2==0).reduce (h,t) -> h+t