def inorder_iterator(root)
  result = []
  stack = []
  current = root

  while !stack.empty? || current
    if current
      stack.push(current)
      current = current.left
    else
      node = stack.pop
      result.push(node.val)  # Add after all left children
      current = node.right
    end
  end

  result
end

def preorder_iterator(root)
  result = []
  stack = []
  current = root

  while !stack.empty? || current
    if current
      stack.push(current)
      result.push(current.val);  # Add before going to children
      current = current.left
    else
      node = stack.pop
      current = node.right
    end
  end

  result
end

def postorder_iterator(root)
  result = []
  stack = []
  current = root

  while !stack.empty? || current
    if current
      stack.push(current)
      result.unshift(current.val)   # Reverse the process of preorder
      current = current.right       # Reverse the process of preorder
    else
      node = stack.pop
      current = node.left           # Reverse the process of preorder
    end
  end
  result
end


BTNode = Struct.new(:val, :left, :right)

n1 = BTNode.new(1)
n2 = BTNode.new(2)
n3 = BTNode.new(3)
n4 = BTNode.new(4)
n5 = BTNode.new(5)
n6 = BTNode.new(6)
n7 = BTNode.new(7)
n8 = BTNode.new(8)

n1.left = n2
n1.right = n3
n2.left = n4
n2.right = n5
n3.left = n6
n3.right = n7

p inorder_iterator(n1)
p preorder_iterator(n1)
p postorder_iterator(n1)
