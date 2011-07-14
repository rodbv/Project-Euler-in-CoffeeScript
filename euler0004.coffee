###
Problem 4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
###

is_palindrome = (number) -> 
   (digit for digit in number+"").reverse().join("") == number+""

biggest_product = 0
for x in [999..100]
   for y in [999..100]
      biggest_product = product if (product = x*y) > biggest_product and is_palindrome product
alert biggest_product
        