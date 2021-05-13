require "hanoi"
describe Hanoi do 
    subject(:hanoi) {Hanoi.new}
    describe "#initialize" do
        it "should set array" do
        expect(hanoi.stack).to eq([[5,4,3,2,1],[],[]])
        end
    end

    describe '#valid_move?' do
        it "should return true if moving the current element to pos is a valid move" do
            expect(hanoi.valid_move([2,0])).to eq(true)

        end
        it "should return false if pos is out of bounds" do
            expect(hanoi.valid_move([3,0])).to eq(false)
        end

    end


end