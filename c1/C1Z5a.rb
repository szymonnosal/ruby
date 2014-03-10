#Szymon Nosal
#C1Z5a.rb
#Napisz program, który pobiera z wejścia trzy liczby i wypisuje je posortowane malejąco.

#rozwiazanie 1#
puts 'Podaj 3 liczby'
a = gets.to_i
b = gets.to_i
c = gets.to_i

puts "\n"
puts [a,b,c].sort

#rozwiazanie 2
=begin
puts 'Podaj 3 liczby'
liczby = []

for i in 0..2
	print (i+1).to_s + " : "
	liczby[i] = gets.to_i
end

puts "\n"
puts liczby.sort 
=end
