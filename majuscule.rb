if ARGV.length < 1
    puts "#{__FILE__} require at least one parameter. A string"
    exit
elsif ARGV.length > 1
    puts "#{__FILE__} require only one parameter. A string"
    exit
end

origin_phrase = ARGV[0].split("")

origin_phrase.each_with_index do |el, i|
    if origin_phrase[i] == " "
        print " "
    elsif i % 2 == 0
        print origin_phrase[i].downcase
    else
        print origin_phrase[i].upcase
    end
end
puts ""

