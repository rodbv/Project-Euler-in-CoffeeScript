###
Problem 3

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
###
theNumber = 600851475143

#calculates all the primes up to max using the Sieve of Erastothenes
# (see https://secure.wikimedia.org/wikipedia/en/wiki/Sieve_of_Eratosthenes)
primes = (max) ->
    sieve = [1..max]
    step = 2
    while step <= max
        multiple = step * 2
        while multiple <= max
            sieve[multiple-1] = null
            multiple += step
        step++
    (x for x in sieve when x != null)

primeFactors = (num) ->
	(x for x in primes Math.sqrt num when num % x == 0)
	
factors = primeFactors theNumber

console.log factors[factors.length-1]

