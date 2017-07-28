RSpec.describe SpeechTree::BinaryOperatorExpression do
  subject { described_class.new(:+) }

  describe "operand?" do
    it "returns false" do
      expect(subject).to_not be_operand
    end
  end

  describe "operator?" do
    it "returns true" do
      expect(subject).to be_operator
    end
  end
end
