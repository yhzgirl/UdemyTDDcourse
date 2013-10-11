require_relative "../lib/my_calc"

describe MyCalc do
	describe "#Add" do
		context "over 1000" do
			it "returns 0" do
				c = MyCalc.new
				result = c.add(1001,1)
				expect(result).to eq(0)
			end
		end
	end
end