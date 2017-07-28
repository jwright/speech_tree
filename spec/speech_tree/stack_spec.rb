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
    before { subject.push :blah }

    it "clears the stack" do
      subject.clear

      expect(subject).to be_empty
    end

    it "resets the length to zero" do
      subject.clear

      expect(subject.length).to be_zero
    end
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
    context "with one item on the stack" do
      before { subject.push :blah }

      it "returns the value without removing the item from the stack" do
        expect(subject.peek).to eq :blah
      end

      it "does not adjust the length" do
        subject.peek

        expect(subject.length).to eq 1
        expect(subject).to_not be_empty
      end
    end

    context "with an empty stack" do
      it "returns nil" do
        expect(subject.peek).to be_nil
      end
    end
  end

  describe "#pop" do
    context "with one item on the stack" do
      subject { described_class.new :blah }

      it "returns the item" do
        expect(subject.pop).to eq :blah
      end

      it "is now an empty stack" do
        subject.pop

        expect(subject).to be_empty
      end

      it "has a length of zero" do
        subject.pop

        expect(subject.length).to be_zero
      end
    end

    context "with an empty stack" do
      it "raises a StackEmptyError" do
        expect { subject.pop }.to raise_error SpeechTree::StackEmptyError
      end
    end

    context "with multiple items on the stack" do
      before do
        subject.push :first
        subject.push :last
      end

      it "returns the last item on the stack" do
        expect(subject.pop).to eq :last
        expect(subject.pop).to eq :first
      end

      it "reduces the length of the stack" do
        subject.pop

        expect(subject.length).to eq 1
      end
    end
  end

  describe "#push" do
    it "pushes the value onto the stack" do
      subject.push :blah

      expect(subject.length).to eq 1
    end

    it "pushes multiple values onto the stack" do
      subject.push :blah
      subject.push :bleh

      expect(subject.length).to eq 2
    end
  end
end
