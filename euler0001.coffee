result  = (x for x in [1...1000] when x%3==0 or x%5==0).reduce (t, s) -> t+s
alert result
