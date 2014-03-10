#Szymon Nosal
#C1Z5b.rb
#Napisz program, który pobiera z wejścia liczbę n oraz n kolejnych liczby i wypisuje je posortowane malejąco.

puts 'Podaj liczbe liczb'
n = gets.to_i
liczby = []

for i in 0..(n-1)
	print (i+1).to_s + " : "
	liczby[i] = gets.to_i
end

puts "\n"
puts liczby.sort.reverse