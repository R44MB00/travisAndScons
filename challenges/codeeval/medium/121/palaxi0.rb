
File.open(ARGV[0]).each_line do |line|
    stringe = line.split("")
    code = "ynficwlbkuomxsevzpdrjgthaq".split("")
    decode = "abcdefghijklmnopqrstuvwxyz".split("")
    newstringe = ""
    stringe.each{ |l|
      pos = code.index(l)
      newstringe += pos.nil? ?  " ": decode[pos] 
    }
    puts newstringe
end
