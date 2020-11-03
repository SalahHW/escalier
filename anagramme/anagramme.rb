if ARGV.length < 2
    puts "#{__FILE__} require a word and a txt files as arguments"
    exit
elsif ARGV.length > 2
    puts "#{__FILE__} require only a word and a txt files as arguments"
    exit
end

word = ARGV[0]
file = File.readlines(ARGV[1])
file.each {|i| i.chomp!}

def same_length?(word1, word2)
    if word1.length == word2.length
        return true
    else
        return false
    end
end
def compare(to_compare, compare_with)
    to_compare.each do |i|
        if i.chars.sort.join == compare_with.chars.sort.join
            puts i
        end
    end
end

def no_anagram(word, file)
    "There is no anagram of \"#{word}\" in the file"
end

to_compare = []
file.each do |i|
    if same_length?(word, i)
        to_compare.push(i)
    end   
end
if to_compare.length == 0
    puts no_anagram(word, file)
else
    compare(to_compare, word)
end