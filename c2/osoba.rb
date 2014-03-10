class Osoba
	def initialize(imie, nazwisko, wiek, pesel)
		@imie = imie
		@nazwisko = nazwisko
		@wiek = wiek
		@pesel = pesel
	end

	def to_s()
		return @imie + ' ' + @nazwisko + ' , ' + @wiek + ' , ' + @pesel
	end

	def zmien_imie(imie)
		@imie = imie
	end

	def zmien_nazwizko(nazwisko)
		@nazwisko = nazwisko
	end
end

osoba = Osoba.new('Adam', 'Nowak', '15', '12345678901')
puts osoba
osoba.zmien_nazwizko('Romek')
puts osoba