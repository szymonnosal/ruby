#Szymon Nosal
#C2Z2.rb
#Napisz funkcje wypisującą tablice asocjacyjne w postaci
#key (...) => tab[key] (...) 
#gdzie ... oznaczają odpowiednie elementy tablicy asocjacyjnej

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