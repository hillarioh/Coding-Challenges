class Node
    attr_accessor :next_node
    def initialize(value,next_node=nil)
      @value = value
      @next_node = next_node
    end
  end
  class Stack
    def initialize
      @head = nil
      @tail = nil
    end
  
    def push(number)
      # your code here
      if @head.nil
        
      end
    end
    
    def pop
      # your code here
    end
    
    def min
      # your code here
    end
  
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.min
  # => 3
  
  stack.pop
  stack.push(7)
  puts stack.min
  # => 3
  
  stack.push(2)
  puts stack.min
  # => 2
  
  stack.pop
  puts stack.min
  # => 3