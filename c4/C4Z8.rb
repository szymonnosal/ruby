    c = File.read('2.txt')
     
    for l in c.split("\n") do
    l =~ /(.+) dług (\d+) oddał (\d+) /
    d = $2 - $3
    puts '#{$1} musi zwrocic #{d}'
    end
