class Node
    attr_accessor :value,:next_node
    def initialize(value,next_node=nil)
      @value = value
      @next_node = next_node
    end
end

class LinkedList

    def initialize
      @head=nil
      @tail=nil
    end

    def add(number)
      if @head.nil?
        @head=@tail= Node.new(number)
      else
        cursor = @head
        while !cursor.next_node.nil?
          cursor = cursor.next_node          
        end
        cursor.next_node=Node.new(number)
      end
    end

    def remove
      if @head.nil?
        return -1
      else
        cursor = @head
        @head=@head.next_node
        return cursor.value
    end
    end
end

class Queue

  def initialize
    @list = LinkedList.new
  end

  def add(number)
    @list.add(number)
  end

  def remove
    @list.remove()
  end
end

  queue = Queue.new
  queue.add(3)
  queue.add(5)
  puts queue.remove
  # => 3
  queue.add(2)
  queue.add(7)
  puts queue.remove
  # => 5
  puts queue.remove
  # => 2
  puts queue.remove
  # => 7
  puts queue.remove
  # => -1