def level_order_traversal(root)

  p level_order_traverse(root, 0, {})

end

def level_order_traverse(root, level, result)

  return result unless root

  result[level] ||= []
  result[level] << root.val

  level_order_traverse(root.left, level+1, result)
  level_order_traverse(root.right, level+1, result)

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

p level_order_traversal(n1)
