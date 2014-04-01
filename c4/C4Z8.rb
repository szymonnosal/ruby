    c = File.read('2.txt')
   
    for l in c.split("\n") do
     l =~ /(.+) dlug (\d+) oddal (\d+)/
     d = $2.to_i - $3.to_i
     puts "#{$1} musi zwrocic #{d}"
    end
