module SpeechTree
  class Stack
    def initialize(value=nil)
      @node = value
    end

    def empty?
      node.nil?
    end

    def push(value)
      @node = value
    end

    private

    attr_reader :node
  end
end
