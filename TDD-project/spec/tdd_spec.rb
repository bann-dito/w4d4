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



