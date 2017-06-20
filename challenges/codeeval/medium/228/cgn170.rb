require 'bigdecimal'
require 'bigdecimal/math'
include BigMath
$pi_number=BigMath.PI(5000).to_s
File.open(ARGV[0]).each_line do |line|  
    $pos=Integer(line)
    puts $pi_number[$pos+1]
end
