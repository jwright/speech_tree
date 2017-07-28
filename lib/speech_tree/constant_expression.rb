require_relative "expression"

module SpeechTree
  class ConstantExpression < Expression
    attr_reader :value

    def initialize(value)
      @value = value
    end

    def operand?
      true
    end
  end
end
