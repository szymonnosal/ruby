#Szymon Nosal
#C1Z8.rb
#Napisz program wypisujący punkty całkowite z kwadratu [0,10]x[0,10] na trzy rózne sposoby.

$to = 9
puts "By for:\n"
for i in 0..$to
	for j in 0..$to
		print '[' + i.to_s + ',' + j.to_s + '] '
	end
	print "\n"
end

puts "\n\nBy while:\n"
i = 0
while i <= $to do
	j = 0
	while j <= $to do
		print '[' + i.to_s + ',' + j.to_s + '] '
		j += 1
	end
	print "\n"
	i += 1
end

def showPairs(x,y)
	if(x > $to)
		return
	end
	
	if(y <= $to)
		print '[' + x.to_s + ',' + y.to_s + '] '
		showPairs(x, y+1)
	else
		print "\n"
		showPairs(x+1, 0)
	end
end

puts "\n\nBy function:\n"
showPairs(0,0)