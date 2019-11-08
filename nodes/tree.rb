

class Tree 
attr_reader :root_node, :leaf

  def initialize(root_node)
    @root_node = root_node
  end
  
  def add_node(value)
    node = @root_node
    new_node = Node.new(value)
    loop do
      if check_value(node, new_node) && node.right
         node = node.right
      elsif ! check_value(node, new_node) && node.left
        node = node.left
      else
        if check_value(node, new_node)
          node.right = new_node
          break
        else 
          node.left = new_node
          break
        end
      end
    end      
  end  

  def check_value(node, new_node)
    return new_node.value >= node.value
  end

end


