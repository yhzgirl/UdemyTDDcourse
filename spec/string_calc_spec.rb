require_relative "../lib/string_calc"

describe "String Calculator" do

	let(:result) { StringCalculator.new }

	describe "#add" do
		context "when there is one number" do
			it "returns that number" do
				expect(result.add("1")).to eq(1)
			end
			it 'returns that number when it is another number' do
					expect(result.add('2')).to eq(2)
			end
		end

		context "when there are 0 numbers" do
			it "returns zero" do
				expect(result.add('')).to eq(0)
			end
		end

		context 'when there are 2 numbers' do
			it 'returns the sum of those numbers' do
				expect(result.add('1, 2')).to eq(3)
			end
		end
	end
end