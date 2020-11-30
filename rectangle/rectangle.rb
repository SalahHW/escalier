if ARGV.length < 2
  puts "#{__FILE__} require two txt files as arguments"
  exit
elsif ARGV.length > 2
  puts "#{__FILE__} require only two txt files as arguments" 
  exit
end

c1 = File.readlines(ARGV[0]) 
c2 = File.readlines(ARGV[1])

c1.each_with_index do |el, i|
  c1[i] = c1[i].split("")
  c1[i].delete("\n")
end
c2.each_with_index do |el, i|
  c2[i] = c2[i].split("")
  c2[i].delete("\n")
end

def check_the_rest(to_find, square, line_index, column_index)
  if square[line_index][column_index + to_find[0].length - 1] != nil
    line = 0
    while line < to_find.length
      column = 0
        while column < to_find[line].length
          if to_find[line][column] != square[line_index + line][column_index + column]
            return false
          end
          column += 1
        end
        line += 1
    end
    return true
  else
    return false
  end
end

def look_for_first(to_find, square)
  square.each_with_index do |line, line_index|
    square[line_index].each_with_index do |column, column_index|
      if column == to_find[0][0]
        if check_the_rest(to_find, square, line_index, column_index) == true
          return "LINE : #{line_index + 1} COLUMN : #{column_index + 1}"
        end
      end
    end
  end
  return "No match found"
end

puts look_for_first(c1, c2)