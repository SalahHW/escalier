if ARGV.length < 1
  puts "#{__FILE__} require at least one parameter."
  exit
elsif ARGV.length > 1
  puts "#{__FILE__} require only one parameter."
  exit
end

number_of_steps = ARGV[0].to_i
puts "Your stair will have #{number_of_steps} steps :"

line = 1
while line <= number_of_steps
  number_of_space = number_of_steps - line
  number_of_space.times {print " "}
  line.times {print "#"}
  puts " "
  line += 1
end