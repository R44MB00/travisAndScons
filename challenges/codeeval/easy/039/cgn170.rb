$max_steps=100
File.open(ARGV[0]).each_line do |line|
  $num=Integer(line)
  $count=0
  while $num!=1 && $count<$max_steps do
      $string_test_num=$num.to_s
      $num_tmp=0
      $string_test_num.split("").each do |i|
          $num_tmp=$num_tmp+Integer(i)**2
      end
      $num=$num_tmp
      $count+=1
  end
  if $num==1 then
      puts 1
  else
      puts 0
  end
end
