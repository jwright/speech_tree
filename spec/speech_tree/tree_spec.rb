RSpec.describe SpeechTree::Tree do
  describe "#initialize" do
    it "initializes an empty expression stack" do
      expect(described_class.new.stack).to be_empty
    end
  end

  describe "<<" do
    context "with an empty stack" do
      xit "adds an expression to the stack"
    end
  end

  describe "#traverse" do
    xit "accepts data that can be used in the expressions"
    xit "visits the expressions in the tree"
    xit "returns the result"
  end
end
