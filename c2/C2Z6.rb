#Szymon Nosal
#C2Z6.rb
#Proszę napisać klasę „Complex” liczb zespolonych.
#Konstruktor klasy powinien być zdefiniowany z parametrami a, b typu rzeczywistego umożliwiającymi nadanie egzemplarzowi klasy wartości np. -6.4+7.8i. 
#	Jeżeli podamy jeden argument ma zostać stworzona liczba a+0i
#	Zdefiniować metodę to_s, która wypisuje liczbę zespoloną w postaci a+bi.
#	Napisać metodę liczącą moduł a+bi.
#	Napisać metodę liczącą argument a+bi.

class MyComplex

	def initialize(a, b = 0)
		@a = a
		@b = b
	end

	def to_s()
		sign = '+'
		if @b < 0
			sign = ''
		end
		return @a.to_s + sign + @b.to_s + 'i'
	end

	def module()
		return Math.sqrt(@a*@a + @b*@b)
	end

	def argument()
		if(@a == 0)
			return Math.asin(@b/self.module())
		else
			return Math.acos(@a/self.module())
		end
	end

end

com = MyComplex.new(4,-3)
puts com
puts com.module
puts com.argument

com = MyComplex.new(-5)
puts com
puts com.module
puts com.argument

com = MyComplex.new(-5, 7)
puts com
puts com.module
puts com.argument