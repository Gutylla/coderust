require 'awesome_print'

def inorder(root, result=[])

  return unless root

  inorder(root.left, result)
  result << root.val
  inorder(root.right, result)

  result
end

def print_perimeter(root)
  result = []

  print_left(root, result)
  print_bottom(root, result)
  print_right(root.right, result)

  result
end

def print_left(root, result)
  while root
    break if root.left.nil? && root.right.nil?

    result << root.val

    if root.left
      root = root.left
    else
      root = root.right
    end
  end

end

def print_bottom(root, result)
  return unless root

  print_bottom(root.left, result)
  result << root.val if root.left.nil? && root.right.nil?
  print_bottom(root.right, result)
end

def print_right(root, result)
  return unless root

  stack = []

  while root
    break if root.left.nil? && root.right.nil?

    stack << root.val

    if root.right
      root = root.right
    else
      root = root.left
    end

  end

  (result << stack.reverse).flatten!

end

def mirror(root)

  return unless root

  temp = root.left
  root.left = root.right
  root.right = temp

  mirror(root.left)
  mirror(root.right)

  root
end

BTNode = Struct.new(:val, :left, :right)

n1 = BTNode.new(1)
n2 = BTNode.new(2)
n3 = BTNode.new(3)
n4 = BTNode.new(4)
n5 = BTNode.new(5)
n7 = BTNode.new(7)
n8 = BTNode.new(8)
n9 = BTNode.new(9)
n10 = BTNode.new(10)
n11 = BTNode.new(11)

n1.left = n2
n1.right = n3

n2.left = n4
n2.right = n5

n4.left = n9
n5.right = n8

n3.right = n7
n7.right = n10
# n9.right = n11

# p print_perimeter(n1)
p inorder(n1)
mirror(n1)
p inorder(n1)
# p print_perimeter(n1)
