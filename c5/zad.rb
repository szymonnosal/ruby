require "mini_magick"

def resize()
	image = MiniMagick::Image.open("Lenna.png")
	image.resize "100x100"
	image.write  "Lenna-resize.png"
end

def change_format()
	image = MiniMagick::Image.open("Lenna.png")
	image.resize "5x5"
	image.format "jpg"
	image.write "Lenna.jpg"
end

def watermark()
	image = Image.open("Lenna.png")
	result = image.composite(Image.open("watermark.png", "png")) do |c|
	  c.gravity "center"
	end
	result.write "Lenna-watermark.png"
end

def grayscale()
	image = MiniMagick::Image.open("Lenna.png")
	image.type "Grayscale"
	image.write  "Lenna-gray.png"
end

def negative()
	image = MiniMagick::Image.open("iLenna.png")
	image.negative
	image.write  "Lenna-negativ.png"
end

resize()
grayscale()
negative()
change_format()
watermark()
