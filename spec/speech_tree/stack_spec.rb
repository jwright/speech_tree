RSpec.describe SpeechTree::Stack do
  describe "#initialize" do
    it "initializes as empty" do
      expect(subject).to be_empty
    end

    it "can initialize with an initial value" do
      expect(described_class.new(5)).to_not be_empty
    end
  end

  describe "#clear" do
  end

  describe "#empty?" do
    it "returns true when there are no values left" do
      expect(subject).to be_empty
    end

    it "returns false when there is at least one value" do
      subject.push :blah

      expect(subject).to_not be_empty
    end
  end

  describe "#peek" do
  end

  describe "#pop" do
  end
end
