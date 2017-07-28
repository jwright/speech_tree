RSpec.describe SpeechTree::ConstantExpression do
  subject { described_class.new(5) }

  describe "operand?" do
    it "returns true" do
      expect(subject).to be_operand
    end
  end

  describe "operator?" do
    it "returns false" do
      expect(subject).to_not be_operator
    end
  end
end
