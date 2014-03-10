#Szymon Nosal
#C1Z7.rb
#Napisz program losującą punkt (o współrzędnych całkowitych) z kwadratu [-100,100] x [-100,100]. 
#Jeżeli liczba jest w okręgu o promieniu r [czyli (x_1)^2+(x_1)^2 < r^2] program powinien wypisać tak w przeciwnym wypadku nie.

x = -100 + Random.rand(200)
y = -100 + Random.rand(200)

print 'Podaj promien: '
r = gets.to_i

puts "\nx: " + x.to_s + " y: " + y.to_s + " r: " + r.to_s + "\n" 

if x*x + y*y < r*r
	puts 'tak'
else 
	puts 'nie'
end