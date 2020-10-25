if ARGV.length < 1
    puts "#{__FILE__} require at least one parameter. A string"
    exit
elsif ARGV.length > 1
    puts "#{__FILE__} require only one parameter. A string"
    exit
end