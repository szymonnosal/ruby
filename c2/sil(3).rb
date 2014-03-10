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

class Osoba
	def initialize(imie, nazwisko, wiek, pesel)
		@imie = imie
		@nazwisko = nazwisko
		@wiek = wiek
		@pesel = pesel
	end

	def to_s()
		return @imie + ' ' + @nazwisko + ' , ' + @wiek + ' , ' + @pesel
	end

	def zmien_imie(imie)
		@imie = imie
	end

	def zmien_nazwizko(nazwisko)
		@nazwisko = nazwisko
	end
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

osoba = Osoba.new('Adam', 'Nowak', '15', '12345678901')
puts osoba
osoba.zmien_nazwizko('Romek')
puts osoba