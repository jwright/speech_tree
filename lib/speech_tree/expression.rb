module SpeechTree
  class Expression
    def operand?
      raise NotImplementedError
    end

    def operator?
      !operand?
    end
  end
end
