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



=begin
Stock Picker
Write a method that takes an array of stock prices (prices on days 0, 1, ...), 
and outputs the most profitable pair of days on which to first buy the stock 
and then sell the stock. Remember, you can't sell stock before you buy it!
=end

# stocks = [ [1, 5], [2, 7],[3, 3],[4, 11]]
# stocks[i[0]] = day
# stocks[i[1]] = price

def stock_picker(stocks)
    biggest_price = 0
    profitable_days = []
    (0...stocks.length).each do |i|
        (i + 1...stocks.length).each do |j|
            day = stocks[i][0]
            price = stocks[i][1]
            other_day = stocks[j][0]
            other_price = stocks[j][1]
            stock_price = price - other_price
            if stock_price.abs > biggest_price
                biggest_price = stock_price
                profitable_days = [day, other_day]
            end
        end
    end

    profitable_days
end

