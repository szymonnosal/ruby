class Fixnum
  alias_method :add, :+
  def + (x)
    sum = self.add(x)
    return sum.next
  end
end

puts 2+3
