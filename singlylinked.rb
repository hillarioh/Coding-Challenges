# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

class LinkedList
    def initialize
        @head = nil
        @tail = nil        
    end

    def add(d) 
        if @head==nil
            @head = Node.new(d)
            @tail = Node.new(d)
            return     
        end

        n = @head
        while n.next_node != nil
            n = n.next_node;
        end
        n. next_node= Node.new(d)
    end

    def count_nodes

        result = 1
        current_node = @head
    
        while current_node.next_node != nil
          result += 1
          current_node = current_node.next_node
        end
    
        result
    end

    def get(index)
        # your code here
        i=0 
       current_node = @head
        
            while current_node.next_node != nil
              if index==i
                return current_node.value
              end
              i+=1
              current_node = current_node.next_node
            end

           current_node.value if !@head.nil?

        #    other method

        #    current_node=@head
           # while i<index
           #    current_node= current_node.next_node
           #   i+=1
           # end
           #  current_node.value
      end

end



# head = Node.new(4)
# node_b = Node.new(2)
# node_c = Node.new(3)
# node_d = Node.new(10)

# head.next_node = node_b
# node_b.next_node = node_c
# node_c.next_node = node_d



myList = LinkedList.new
myList.add(2)
myList.add(6)
myList.add(9)
myList.add(1)
puts myList.count_nodes
puts myList.get(3)




