#Szymon Nosal
#C2Z3.rb
#W poniższych zadaniach zakładamy, że funkcje mają nieokreśloną liczbę argumentów będących liczbami całkowitymi. 
#Pierwszy i jedyny określony argument oznacza liczbę pozostałych argumentów
# Napisz funkcję liczącą sumę podanych argumentów
# Napisz funkcje liczącą średnią arytmetyczną

def countSum(n, *num)

	sum = 0
	num.each{
		|val, val1|
		sum += val
	}
	return sum

end

def countAvg(n, *num)

	sum = 0
	count = 0
	num.each{
		|val, val1|
		sum += val
		count += 1
	}
	return sum/count

end

puts countSum(5, 5,3,3,10,5)
puts countAvg(5, 5,3,3,10,5)