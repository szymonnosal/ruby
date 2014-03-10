#Szymon Nosal
#C1Z9.rb
#Napisz program wypisującą szachownicę n na m. Np. dla

print 'n = '
n = gets.to_i
print 'm = '
m = gets.to_i
field = 0

for i in 1..n
	for j in 1..m
		#print (field = (field+1).modulo(2))
		#print (i.modulo(2) + j.modulo(2)).modulo(2)
		print ((i+j) * (i+j) + 1).modulo(2)
	end
	print "\n"
end