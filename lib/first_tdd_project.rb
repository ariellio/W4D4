=begin
My Transpose
To represent a matrix, or two-dimensional grid of numbers, we can write an array containing arrays 
which represent rows:

rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

row1 = rows[0]
row2 = rows[1]
row3 = rows[2]
We could equivalently have stored the matrix as an array of columns:

cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations. 
You may assume square matrices for simplicity's sake. Usage will look like the following:

my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])
 # => [[0, 3, 6],
 #    [1, 4, 7],
 #    [2, 5, 8]]
=end

class Array
    def my_uniq
        unique = []

        self.each do |ele|
            unique << ele if !unique.include?(ele)
        end

        unique
    end

    def two_sum
        two = []

        (0...self.length - 1).each do |i|
            (i + 1...self.length).each do |j|
                two << [i, j] if self[i] + self[j] == 0
            end
        end
    
        two
    end

    def my_transpose
        transposed = [] # Array.new(self.length) { Array.new(self.length) }

        (0...self.length).each do |i|       # 0
            sub_arr = []
            
            (0...self.length).each do |j|   # 1
                sub_arr << self[j][i]
            end

            transposed << sub_arr
        end

        transposed
    end
end