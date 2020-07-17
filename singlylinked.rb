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
            n = n.next_node
        end
        n. next_node= Node.new(d)
    end

    def get_node(index)
      i=0 
      current_node = @head
      while i<index 
        if i==index
          return current_node
        end
        current_node = current_node.next_node
        i+=1
      end
      
    end

    def count_nodes

      return if @head.nil?

        result = 1
        current_node = @head
    
        while current_node.next_node != nil
          result += 1
          print current_node.value
          current_node = current_node.next_node
        end
        puts current_node.value          
        result
    end

    def get(index)
        # your code here
        if index==0
          return @head.value
        end


        i=0 

           current_node=@head
           while i<index 
            if current_node.next_node==nil
              return "Out of range"
            end
              current_node= current_node.next_node
              i+=1
           end
            current_node.value 
    end

    def add_to(index,item)
      if index ==0
      initial_head = @head
      @head = Node.new(item)
      @head.next_node = initial_head
      return
      end

      current_node=@head
      i =0 
      while i<index
        if index-1 == i
          initial_next = current_node.next_node
          current_node.next_node = Node.new(item)
          current_node.next_node.next_node = initial_next
        else
         current_node= current_node.next_node
        end
        i+=1
      end
    end

    def remove(index)
      return if @head.nil?

      if index ==0
        @head = @head.next_node
        return
      end

      current_node=@head
      i =0 

      while i<index
        if current_node.next_node==nil
          return "Out of range"
        end
        if index-1 == i
          current_node.next_node = current_node.next_node.next_node
        else
         current_node= current_node.next_node
        end
        i+=1
      end
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
myList.add(8)
myList.add(3)
myList.add_to(34,5)
myList.add_to(2,4)

# puts myList.count_nodes
# puts myList.get(1)
myList.remove(4)
# myList.add_to(0,1)
# myList.remove(0)
myList.count_nodes


