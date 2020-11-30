if ARGV.empty?
  puts "#{__FILE__} require a txt files as arguments"
  exit
elsif ARGV.length > 1
  puts "#{__FILE__} require only a txt files as arguments"
  exit
end

# Sudoku ligne par ligne
sudoku = []
File.foreach(ARGV[0]) { |i| sudoku.push(i.chomp.split('')) }

# Affiche le sudoku complet
def print_sudoku(sudoku)
  sudoku.each_index do |i|
    sudoku.each_index do |j|
      print sudoku[i][j]
    end
    print "\n"
  end
end

# Deffini les colones
column = []
i = 0
sudoku.each do
  temp = []
  sudoku.each do |el|
    temp.push(el[i])
  end
  i += 1
  column.push(temp)
end

# Corrige la ligne
def check_line(sudoku, line_index)

end

# Corrige la colonne
def check_column(sudoku, column_index)

end

# Corrige le square
def check_square(sudoku, line_index, column_index)

end

def solve_sudoku(sudoku)
  sudoku.each_index do |i|
    sudoku[i].each_index do |j|
      if sudoku[i][j] == '_'
        for value in 1..9
          sudoku[i][j] = value
          if check_line(sudoku, i) && check_column(sudoku, j) && check_square(sudoku, i, j)
            solve_sudoku(sudoku)
          end
        end
      end
    end
  end
end

print_sudoku(sudoku)
puts
