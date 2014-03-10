#Szymon Nosal
#C2Z5.rb
#Napisz funkcję sum liczącą sumę liczb zawartą w tablicy i wypisują
#Suma to ... (gdzie ... oznacza wynik sumowania)
#NIE MOŻNA W CIELE FUNKCIJ UZYĆ LITERAŁU "Suma to " (użyj bloku oby wypisać odpowiedni tekst)

def sumuj(tab)
	
	sum = 0
	tab.each{
		|val, val1|
		if val.kind_of?(Fixnum)
			sum += val
		end
	}
	
	yield
	print sum
end

sumuj ([1,2,3,4,5,6,7,8,9,10]){print "Suma to ... "}