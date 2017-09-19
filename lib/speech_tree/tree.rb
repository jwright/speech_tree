module SpeechTree
  class Tree
    attr_reader :stack

    def initialize(expression=nil)
      @stack = Stack.new expression
    end

    def <<(expression)
      if expression.operand?
        stack << expression
      else
        left = stack.pop
        right = stack.pop

        stack << expression.assign(left, right)
      end
    end
  end
end
