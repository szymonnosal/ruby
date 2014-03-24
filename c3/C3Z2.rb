class Samochod
	@poj_silnika
	
	def initialize(poj_silnika)
		@poj_silnika = poj_silnika
	end
	
	def inf()
		puts "poj_silnika: " + @poj_silnika.to_s()
	end
	
end

class Fiat < Samochod

@poj_silnika

	@rok_produkcji
	
	def initialize(poj_silnika, rok_produkcji)
		@poj_silnika 	= poj_silnika
		@rok_produkcji 	= rok_produkcji
	end
	
	def inf()
		super()
		puts "rok_produkcji: " + @rok_produkcji.to_s()
	end

end

class Fiat_126p < Fiat

	@il_kilometrow
	
	def initialize(poj_silnika, rok_produkcji, il_kilometrow)
		@poj_silnika 	= poj_silnika
		@rok_produkcji 	= rok_produkcji
		@il_kilometrow  = il_kilometrow
	end
	
	def inf()
		super()
		puts "il_kilometrow: " + @il_kilometrow.to_s()
	end

end

auto = Fiat_126p.new(2010, 2.5, 100)
auto.inf()
