/
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
/

def fibonacci(max_total)
	list = [1]
	until list[list.size - 1] >= max_total
		list << list[list.size-1] + list[list.size-2]
	end
	return list
end

def findeven(list_to_sort)
	even_numbers = []
	list_to_sort.each do |number|
		if number % 2 == 0
			even_numbers << number 
		end
	end
	return even_numbers
end

def sum(list_to_sum)
	sum = 0;
	list_to_sum.each do |item|
		sum += item
	end 
	return sum
end

p sum(findeven(fibonacci(4000000)))