class Node
    attr_accessor :next_node,:value
    def initialize(value,next_node=nil)
      @value = value
      @next_node = next_node
    end
  end

  class Stack

    def initialize
      @head = nil
      @least = nil
    end
  
    def push(number)
      # your code here
      new_node = Node.new(number)
      
   
      if @head.nil?
        @head = new_node
        @least = number
      else
        @least = number if number < @least
        new_node.next_node = @head
        @head = new_node
      end

    end
    
    def pop
      # your code here
      return if @head.nil?
      @head = @head.next_node
    end
    
    def min
      # your code here
      return @least
    end

    def output
      return if @head.nil?

      arr = []

      current = @head

      while  current.next_node!=nil
        arr << current.value
        current = current.next_node
      end

      arr
    end
  
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.min
  # => 3
  puts"output - #{stack.output}" 
  
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
  # puts stack.output