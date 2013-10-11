require_relative "../lib/string_calc"

describe "String Calculator" do

	describe "#add" do

		context "when there is one number" do
			it "returns that number" do
			 result = StringCalculator.new.add("1")
				expect(result).to eq(1)
			end
		end

		context "when there are 0 numbers" do
			it "returns zero" do
				result = StringCalculator.new.add("")
				expect(result).to eq(0)
			end
		end
	end
end