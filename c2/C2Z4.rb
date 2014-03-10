#Szymon Nosal
#C2Z4.rb
#W poniższych zadaniach zakładamy, że funkcje mają nieokreśloną liczbę argumentów będących liczbami całkowitymi. 
#Pierwszy i jedyny określony argument oznacza liczbę pozostałych argumentów
# Napisz funkcję liczącą elementy typu Fixnum
# Napisz funkcje liczącą średnią zelementów typu Fixnum

def countSum(n, *num)

	sum = 0
	num.each{
		|val, val1|
		if val.kind_of?(Fixnum)
			sum += val
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

puts countSum(5, 5,3,3,'a',5)
puts countAvg(5, 5,3,3,[1,2,3], 'a',5)