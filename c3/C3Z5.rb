class Array 
  def findd
    for i in 0 .. size do
      value = self[i]
      return value if yield(value)	
    end	
    return nil
  end	
end	
a = [1, 2, 3, 4]
puts a.find{ |a|  a > 1 }
puts a.findd{ |a|  a > 1 }
