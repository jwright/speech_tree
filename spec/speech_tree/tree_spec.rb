RSpec.describe SpeechTree::Tree do
  describe "#initialize" do
    it "initializes an empty expression stack" do
      expect(described_class.new.stack).to be_empty
    end
  end

  describe "<<" do
    context "with an empty stack" do
      subject { described_class.new }

      it "adds an expression to the stack" do
        subject << SpeechTree::ConstantExpression.new(5)

        expect(subject.stack.peek).to be_kind_of SpeechTree::ConstantExpression
      end
    end

    context "with an operand expression" do
      subject { described_class.new SpeechTree::ConstantExpression.new(3) }

      it "adds an expression to the stack" do
        subject << SpeechTree::ConstantExpression.new(5)

        expect(subject.stack.pop.value).to eq 5
        expect(subject.stack.pop.value).to eq 3
      end
    end

    context "with an operator expression" do
      before do
        subject << SpeechTree::ConstantExpression.new(3)
        subject << SpeechTree::ConstantExpression.new(5)
      end

      it "replaces the last two expressions with the expression" do
        subject << SpeechTree::BinaryOperatorExpression.new(:+)

        expect(subject.stack.peek).to be_kind_of SpeechTree::BinaryOperatorExpression
        expect(subject.stack.length).to eq 1
      end

      xit "the expression now has two children"
    end
  end

  describe "#traverse" do
    xit "accepts data that can be used in the expressions"
    xit "visits the expressions in the tree"
    xit "returns the result"
  end
end
