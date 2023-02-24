def uniq(array)

    list = []
    array.each_with_index do |ele|
        if !list.include?(ele)
            list << ele1
        end
    end
    puts list
    list
end

class Array 
    def two_sum
        winners = []

        self.each_with_index do |ele,idx|
            self.each_with_index do |ele1,idx1|
                if idx1 > idx && ele + ele1 == 0
                    winners << [idx,idx1]
                end
            end
        end
        winners 
    end

    def my_transpose
        grid = Array.new(self.length) {Array.new(self.length)}
        self.each_with_index do |row,idx|
            row.each_with_index do |ele,idx1|
                grid[idx1][idx] = self[idx][idx1]
            end
        end
        grid             
    end 

end 

def stock_picker(nums)
    winners = []

    max = -1
    nums.each_with_index do |ele1, index1|
        nums.each_with_index do |ele2, index2|
            if index2 > index1 && max < (ele2 - ele1)
                max = (ele2 - ele1)
                winners = [index1, index2]
            end
        end
    end

    winners

end

class Towers
    attr_accessor :grid
    def initialize(num = 4)

        @grid = [[4, 3, 2, 1], [], []]
        
    end

    def move(num1, num2)
        @grid[num2] << @grid[num1].pop
    end

    def won?
        return true if self.grid == [[], [], [4, 3, 2, 1]]
        false
    end

    def gets_move
        answer = gets.chomp.split(" ")

    end

    def play

        until self.won?
            p self.grid
            input = self.gets_move
            num_1, num_2 = input
            self.move(num_1.to_i, num_2.to_i)
        end
        
    end

end