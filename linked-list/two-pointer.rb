# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if !head || !head.next

  node = head
  compare_node = head

  isCircular = false

  while true do
    x = 1
    y = 2

    until x == 0 do
      break unless node.next

      node = node.next
      x -= 1
    end

    until y == 0 do 
      break unless compare_node.next

      compare_node = compare_node.next
      y -= 1
    end

    if !node.next || !compare_node.next
      break
    end

    if node.val == compare_node.val
      isCircular = true
      break
    end
  end

  return isCircular
end
