# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)

  return unless head

  c = head
  n = 0
  n += 1 while c = c.next

  return head if n < 2

  c = head
  even_head = head
  odd_head = head.next
  head = head.next.next

  eh = even_head
  oh = odd_head

  i = 0
  while i < n && !head.nil?

    nn = head.next

    p head
    p nn

    if i.even?
      eh.next = head
      eh.next.next = nil
      eh = eh.next
    else
      oh.next = head
      oh.next.next = nil
      oh = oh.next
    end

    break unless nn
    head = nn
    i += 1
  end

  oh.next = nil
  eh.next = odd_head

  even_head

end


n1 = ListNode.new(1)
n2 = ListNode.new(2)
n3 = ListNode.new(3)

n1.next = n2
n2.next = n3

p odd_even_list(n1)
