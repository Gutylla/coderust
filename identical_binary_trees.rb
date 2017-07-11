def identical_binary_trees(t1, t2)

  return false if (t1 && !t2) || (!t1 && t2)
  return true if !t1 && !t2
  return false if t1.val != t2.val
  return true if identical_binary_trees(t1.left, t2.left) && identical_binary_trees(t1.right, t2.right)

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

p identical_binary_trees(n1, n1)
