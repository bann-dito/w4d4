require 'tdd.rb'


describe '#uniq' do 
    subject(:array) {[1, 2, 1, 3, 4]}
    context 'should return array on unique elements' do 
        it "has unique values" do 
            expect(array.uniq).to eq([1, 2, 3, 4])
        end
    end
end

describe '#two_sum' do
    subject(:arry) {[-1,2,-2,1]} # Array.new(2,0)==[0,0] 
    #Pairs of arrays of index, that sum to 0
    
    context 'when pairs sum to zero' do 
        it "has pairs of valid indexes" do 
            expect(arry.two_sum).to match_array [[1,2],[0,3]]
        end
    end

    context 'pairs are sorted dictionary-wise' do
        it "has correctly ordered pairs" do
            expect(arry.two_sum).to eq([[0,3],[1,2]])
        end
    end
end

#Assuming square matrix 
#Flip rows into cols
#[0,0] doesnt move. [-1,-1] doesnt move. Therefore, diagonal doesnt move


describe 'my_transpose' do 
    subject(:square) {[[0,1,2],[3,4,5],[6,7,8]]}
   
    #one context that checks to make sure you arent stealing .transpose
    context "when transposed, diagonal is unchanged" do 
        it "has the same left right diagonal" do 
            expect(square.my_transpose).to end_with([2,5,8])
            expect(square.my_transpose).to start_with([0,3,6])
            expect(square.my_transpose[1][1]).to eq(4)
        end
        it "flips the entire array from rows to cols" do
            expect(square.my_transpose).to eq([[0,3,6],[1,4,7],[2,5,8]])
        end
    end
    before do 
        expect(square).not_to receive(:transpose)
        square.my_transpose
    end
    context "does not invoke built in .transpose" do
        
        it "follows the rules" do 
            expect(square).not_to receive(:transpose)
        end
    end
end

describe 'stock_picker' do 
    subject(:array) { [1, 2, 3, 4]}
    let(:array_down) { [4, 4, 2, 1]}
    let(:complex) { [4, 10, 78, 25, 5, 90, 2, 30, 45, 37, 72, 42]}

    context "when the array is ascending" do 
        it "has the lowest value and the highest value" do 
            expect(stock_picker(array)).to eq([0, 3])
        end
    end

    context "when the array is decending" do 
        it "has the initial days" do
            expect(stock_picker(array_down)).to eq([0, 1])
        end
    end

    context"when the array is jumbled" do 
        it "has correct days" do 
            expect(stock_picker(complex)).to eq([0, 5])
        end
    end
end

###towers class
###take number for towers
### store for 2 x 2 array with three elements
## range that number down to 1
## [[4,3,2,1] [] []] => [[] [] [4,3,2,1]]

#move LIFO
#stack

describe '#move' do 
    subject(:towers) {Towers.new}
    context "needs two indexes" do 
        it "has an argument of two numbers" do 
            expect(towers.move(0, 1))
        end
    end

    context "behaves like a stack" do
        it "removes top element, places element on another stack" do 
            towers.move(0, 1) 

            expect(towers.grid).to eq([[4,3,2], [1], []])
        end
    end
end

describe '#won?' do
    subject(:towers) {Towers.new}
    context "when last array" do
        it "has the right order" do 
            towers.grid = [[], [], [4, 3, 2, 1]]
            expect(towers.won?).to eq(true)
        end
    end
end




