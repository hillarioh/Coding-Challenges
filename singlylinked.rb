# frozen_string_literal: true

class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

#   def self.count_nodes(head)

#     result = 1
#     current_node = head

#     while current_node.next_node != nil
#       result += 1
#       current_node = current_node.next_node
#     end

#     result
# end


end

def count_nodes(head)

    result = 1
    current_node = head

    while current_node.next_node != nil
      result += 1
      current_node = current_node.next_node
    end

    result
end

head = Node.new(4)
node_b = Node.new(2)
node_c = Node.new(3)
node_d = Node.new(10)

head.next_node = node_b
node_b.next_node = node_c
node_c.next_node = node_d

puts count_nodes(head)
