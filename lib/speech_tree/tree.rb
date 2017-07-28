module SpeechTree
  class Tree
    attr_reader :stack

    def initialize
      @stack = Stack.new
    end

    def <<(expression)
      stack << expression
    end
  end
end
