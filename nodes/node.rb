require_relative "tree.rb"

class Node
   attr_reader :value
   attr_accessor :left, :right
   def initialize(value)
    @value = value
    @left =nil
    @right =nil
   end
  end

  
root_node = Node.new(5)
tree = Tree.new(root_node)
tree.add_node(6)
tree.add_node(4)
tree.add_node(4)
p tree




