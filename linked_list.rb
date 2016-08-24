class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

  def self.list(head_node, msg = [])
    until head_node.nil?
      msg << head_node.value
      head_node = head_node.next
    end
    msg
  end

  def self.push(head_node, push_node)
    tail(head_node).next = push_node
  end

  def self.pop(head_node)
    return head_node.next = nil if head_node.next.next.nil?
    head_node = pop(head_node.next)
  end

  def self.insert_first(head_node, first_node)
    head_node.next = first_node
  end

  def self.remove_first(head_node)
    head_node.next = nil
  end

  def self.insert(head_node, insert_node, index)
    node_index = node_at_index(head_node, index)
    after = node_index.next.next
    node_index.next = insert_node
    insert_node.next = after
  end

  def self.remove_at_index(head_node, index)
    node_index = node_at_index(head_node, index - 1)
    node_index.next = node_index.next.next
  end

  def self.object_with_value(head_node, value)
    return head_node if node.value == value
    return "None matching." if head_node.next.nil?
    object_with_value(head_node.next, value)
  end

  def self.reverse(node)
    return node if node.next.nil?
    head, swap, node.next, link = node.next, node, nil, link = head.next
    while link != nil
      head.next = swap
      swap = head
      head = link
      link = link.next
    end
    head.next = swap
    head
  end

  def self.tail(head_node)
    return head_node if head_node.next.nil?
    head_node = tail(head_node.next)
  end

  private

  def self.node_at_index(head_node, index, count = 0)
    return 'Invalid index.' if head_node.next.nil?
    return head_node if index == count
    node_at_index(head_node.next, index, count += 1)
  end
end
