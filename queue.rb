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
                current_node= current_node.next_node
                i+=1
             end
              current_node.value 
      end
  
      def add_to(index,item)
        
        if index ==0
          @head = Node.new(item,@head)
        else
          current_node = get_node(index-1)
          initial_next = current_node.next_node
          current_node.next_node = Node.new(item,initial_next)
        end
  
      end
  
      def remove(index)
        return -1 if @head.nil?

        removed_node = nil
        removed_node = @head.value
        @head = @head.next_node
        return removed_node
      
      end

      private
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

end

class Queue
    def initialize
        @list = LinkedList.new
    end
    def add(number)
      # your code here
      @list.add(number)
    end
    
    def remove
      # your code here
      @list.remove(0)
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
