def silnia(n)
	
	if n == 1
		return 1
	else 
		return n * silnia(n-1)
	end

end

def fib(n)

	if n == 0
		return 0
	elsif n == 1
		return 1
	else
		return fib(n-1) + fib(n-2)
	end

end

def printArray(array, tab = 0)

	array.each{
		|key, val| 
		if val.kind_of?(Hash) || val.kind_of?(Array) 
			print getSpace(tab)
			puts "#{key} => "
			printArray(val, tab + 1)
		else
			print getSpace(tab)
			puts "#{key} => #{val}" 
		end
	}

end

def getSpace(tab)
	ret = ''
	count = tab*4
	while count > 0 do
		ret += ' '
		count -=1
	end
	return ret
end

def countSum(n, *num)

	sum = 0
	num.each{
		|val, val1|
		if val.kind_of?(Fixnum)

			sum += val
			count += 1
		end
	}
	return sum

end

def countAvg(n, *num)

	sum = 0
	count = 0
	num.each{
		|val, val1|
		if val.kind_of?(Fixnum)
			sum += val
			count += 1
		end
	}
	return sum/count

end

puts silnia(5)
puts fib(5)
printArray({
	"a" => "Adam", 
	"b" => "Białystok", 
	"c" => "cham", 
	"d" => {
		"e" => "Egipt", 
		"k" => {
			"x" => "X",
			"y" => "Y",
			'z' => "Z"
		}
	}
})

puts countAvg(5, 5,3,3,'a',5)
