# Alexander Botero
def sort(list)
  for i in 1...list.length
    a = i
    while a > 0 && list[a - 1] > list[a]
      list[a - 1], list[a] = list[a], list[a - 1]
      a -= 1
    end
  end

  list
end

File.open(ARGV[0]).each_line do |line|
  numbers = line.split(' ').map(&:to_f)
  puts sort(numbers).map { |n| '%0.3f' % n  }.join(' ')
end
