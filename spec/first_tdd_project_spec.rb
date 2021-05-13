require "first_tdd_project"

describe Array do 
    describe "#my_uniq" do 
        it "removes duplicates from an array" do
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
        end
    end

    describe "#two_sum" do
        it "adds indices where value sums to zero " do 
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "#my_transpose" do
        it "row equals column" do
            expect([[0, 1, 2],          
                    [3, 4, 5],
                    [6, 7, 8]].my_transpose).to eq([[0, 3, 6],
                                                    [1, 4, 7],
                                                    [2, 5, 8]])
        end

        it "column equals rows" do 
            expect([[0, 3, 6],
                    [1, 4, 7],
                    [2, 5, 8]].my_transpose).to eq([[0, 1, 2],
                                                    [3, 4, 5],
                                                    [6, 7, 8]])
        end
    end
end
