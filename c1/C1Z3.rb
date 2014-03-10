#Szymon Nosal
#C1Z3.rb
#Napisz program, który na wejściu (z konsoli) otrzymuje dane o wadze (w kilogramach) i wzroście 
#(w centymetrach) osoby, a na wyjściu wypisuje informację: niedowaga, norma lub nadwaga 
#zgodnie z kryterium:
#	Niedowaga: waga < wzrost/2.5
#	Norma: wzrost/2.5 <= waga <= wzrost/2.3
#	Nadwaga: wzrost/2.3 < waga

def bmi(waga, wzrost)
	
	if waga < wzrost/2.5
		puts 'Niedowaga'
	elsif wzrost/2.3 < waga
		puts 'Nadwaga'
	else
		puts 'Norma'
	end
end

puts 'Waga w kg: '
waga = gets.chomp
puts 'Wzrost w cm: '
wzrost = gets.chomp
bmi(waga.to_i, wzrost.to_i)