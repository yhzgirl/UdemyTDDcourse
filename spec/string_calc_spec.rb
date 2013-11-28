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

    context 'when there are more than 2 numbers' do
      it 'returns the sum of those numbers' do
        expect(result.add('1,2,3,4')).to eq(10)
      end
    end

    context 'when the number is more than one digit' do
      it 'returns the sum of the numbers' do
        expect(result.add('10, 1, 10')).to eq(21)
      end
    end

    context 'when the delimiters is not a comma' do
      it 'returns the sum of the numbers' do
        expect(result.add('10, 1;1)2')).to eq(14)
      end
    end
  end
end