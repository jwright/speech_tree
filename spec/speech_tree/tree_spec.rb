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
      xit "adds an expression to the stack"
    end

    context "with an operator expression" do
      xit "replaces the last two expressions with the expression"
      xit "the expression now has two children"
    end
  end

  describe "#traverse" do
    xit "accepts data that can be used in the expressions"
    xit "visits the expressions in the tree"
    xit "returns the result"
  end
end
