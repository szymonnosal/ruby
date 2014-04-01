def change(string)
	string
	.gsub(/[ATGC]/, 'A' => 'T', 'T' => 'A', 'G'=>'C', 'C'=>'G')
	.reverse!# your code goes here	
end

puts change('ACTG')
puts change('ACGGGAGGACGGGAAAATTACTACGGCATTAGC')
