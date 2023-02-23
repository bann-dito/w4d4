require 'tdd.rb'


describe '#uniq' do 
    subject(:array) {[1, 2, 1, 3, 4]}
    context 'should return array on unique elements' do 
        it "has unique values" do 
            expect(array.uniq).to eq([1, 2, 3, 4])
        end
    end
end


