require "mini_magick"

def resize(img)
	image = MiniMagick::Image.open(img)
	image.resize "100x100"
	image.write  "Lenna-resize.png"
end

def change_format(img)
	image = MiniMagick::Image.open(img)
	image.resize "5x5"
	image.format "jpg"
	image.write "Lenna.jpg"
end

def watermark(img)
	image = MiniMagick::Image.open(img)
	result = image.composite(MiniMagick::Image.open("Lenna-resize.png", "png")) do |c|
	  c.gravity "center"
	end
	result.write "Lenna-watermark.png"
end

def grayscale(img)
	image = MiniMagick::Image.open(img)
	image.type "Grayscale"
	image.write  "Lenna-gray.png"
end

def negative(img)
	image = MiniMagick::Image.open(img)
	image.negate()
	image.write  "Lenna-negate.png"
end

def rotate_image(img)
	image = MiniMagick::Image.open(img)
	image.combine_options do |c|
	  c.rotate "-45>"
	end
	image.write "Lenna-rotate.png"
end

img = "Lenna.png"

resize(img)
grayscale(img)
negative(img)
change_format(img)
watermark(img)
rotate_image(img)
