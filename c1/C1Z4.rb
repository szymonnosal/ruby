#Szymon Nosal
#C1Z4.rb
#Napisz program, który na wejściu (z konsoli) otrzymuje datę w formacie dd/mm/rr 
#a na wyjściu wypisuje datę w formacie dd, miesiąc, rok. 
#Na przykład data wejściowa 25/12/61 jest przetwarzana do postaci 25 grudzień 1961
def parseData(data)
	data = data.split('/')
	month = case data[1].to_i
		when 1 then 'styczen'
		when 2 then 'luty'
		when 3 then 'marzec'
		when 4 then 'kwiecien'
		when 5 then 'maj'
		when 6 then 'czerwiec'
		when 7 then 'lipiec'
		when 8 then 'sierpien'
		when 9 then 'wrzesien'
		when 10 then 'pazdziernik'
		when 11 then 'listopad'
		when 12 then 'grudzien'
		else 'wrong month'
	end
	return data[0] + ' ' + month + ' ' + data[2] 
end

data = gets
puts(parseData(data))