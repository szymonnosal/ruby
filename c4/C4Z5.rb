adresy_pl = File.new("adresyPL.txt", "w")
adresy = File.new("adresy.txt", "w")
file = File.open("dane.txt", "r") do |file|

while tmp = file.gets
  tmp = tmp.scan('/[a-zA-Z0-9_]+@[a-zA-Z0-9]+.[a-zA-Z]+/').join
  
  if(tmp.length!=0)
    adresy.puts(tmp + ",")
  end
end
end
