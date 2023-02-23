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



