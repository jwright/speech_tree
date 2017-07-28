require_relative "expression"

module SpeechTree
  class BinaryOperatorExpression < Expression
    attr_reader :operator

    def initialize(operator)
      @operator = operator
    end

    def operand?
      false
    end
  end
end
