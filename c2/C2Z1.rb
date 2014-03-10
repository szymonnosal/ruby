#Szymon Nosal
#C2Z1.rb
#Napisz rekurencyjnie funkcje
#silnia - liczącą silnie
#fib - liczącą n-ty element Ciąg Fibonacciego

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

puts silnia(5)
puts fib(5)