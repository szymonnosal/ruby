class Lista
  include Comparable
  attr_reader :a, :len
  attr_writer :a, :len
  def initialize(a)
    @a = a
    @len = @a.length
  end	
  def to_s
    @a.to_s
  end 		
  def <=>(arg)
    self.len <=> arg.len
  end	
end	
list_1 = Lista.new([1,1,1])
list_2 = Lista.new([1,1,1,1])
puts list_1 == list_2
puts list_1 < list_2
puts list_1 > list_2
