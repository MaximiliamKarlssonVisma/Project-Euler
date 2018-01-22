/
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
/

def sum_multi_numbers(max_number)
	sum = 0; (max_number - 1).times{|i| sum += i if i % 3 == 0 || i % 5 == 0}; return sum
end 

p sum_multi_numbers(1000)
