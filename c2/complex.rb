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