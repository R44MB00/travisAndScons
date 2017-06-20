begin
File.open('fichero.txt','r').each_line do |line|
  words = line.split(',')
  dat = words[0]
  words[1].each_char { |t| dat = dat.delete(t.strip()) }
  puts dat
end
end
