module SpeechTree
  # Represents a Stack data type that responds to a minimal api.
  # This is implemented as a linked list and follows LIFO ordering.
  class Stack
    def initialize(value=nil)
      @length = 0
      push(value) unless value.nil?
    end

    def clear
      @length = 0
      @current = nil
    end

    def empty?
      current.nil?
    end

    def length
      @length
    end

    def peek
      return nil if empty?
      current.value
    end

    def push(value)
      @current = Node.new value, current
      @length += 1
    end
    alias_method :<<, :push

    def pop
      raise StackEmptyError if empty?
      value = current.value
      @current = current.next_node
      @length -= 1
      value
    end

    private

    attr_reader :current

    class Node
      attr_accessor :value, :next_node

      def initialize(value, next_node)
        @value = value
        @next_node = next_node
      end
    end
  end

  class StackEmptyError < RuntimeError
  end
end
