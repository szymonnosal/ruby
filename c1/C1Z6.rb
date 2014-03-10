#Szymon Nosal
#C1Z6.rb
#Napisz program, który po wprowadzeniu długości trzech boków, sprawdzi czy można z nich zbudować trójkąt:
#równoboczny
#równoramienny
#prostokątny

def rodzajTrojkata(a,b,c)
	if (a==b) && (b==c)
		puts "Trojkat jest rownoboczny "
	elsif (a==b) || (b==c) || (a==c)
		puts "Trojkat jest rownoramienny "
	elsif (a*a+b*b==c*c) || (b*b+c*c==a*a) || (a*a+c*c==b*b)
		puts "Trojkat jest prostokatny "
	else
		puts "Trojkat jest roznoboczny"
	end
end

puts 'Podaj 3 boki trojkata'
a = gets.to_i
b = gets.to_i
c = gets.to_i

if (a>0 && b>0 && c>0) && ((a+b>c) && (a+c>b) && (c+b>a))
	rodzajTrojkata(a,b,c)
else 
	puts "Nie da sie zbudowac trojkata"; 
end
