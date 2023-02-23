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