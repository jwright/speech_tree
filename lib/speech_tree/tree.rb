module SpeechTree
  class Tree
    attr_reader :stack

    def initialize
      @stack = []
    end

    def <<(expression)
      stack << expression
    end
  end
end
