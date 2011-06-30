sieve = (max) ->
    numbers = [1..max]
    step = 2
    while step <= max
        x = step * 2
        while x <= max
            numbers[x-1] = null
            x += step
        step++
    s
    
console.log (x for x in sieve(20000) when x != null)