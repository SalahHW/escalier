if ARGV.length < 0
    puts "#{__FILE__} require at least one parameter. A positive integer"
    exit
elsif ARGV.length > 1
    puts "#{__FILE__} require only one parameter. A positive integer"
    exit
end

nombre = ARGV[0].to_i
resultat = 1

for i in 1..nombre do
resultat = i * resultat
end

puts resultat