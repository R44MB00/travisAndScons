begin


File.open(ARGV[0]).each_line do |line|
    verification='FALSE'
    #puts line
    rest = line.split(//)
    for key in rest
        if(verification=='FALSE') then
            #puts rest
            a = line.count key
        
            if ( a == 1) then
                puts key
                verification='TRUE'
            end
        end
    end
end
end
