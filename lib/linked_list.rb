class LinkedListNode
  def initialize(val = nil)
    @value = val
  end

  def value
    return @value
  end

  def next_node
    return @next_node
  end

  def next_node=(node)
    @next_node = node
  end
end

class LinkedList
  def initialize(first_node)
    @first_node = first_node
  end

  def first_node
    return @first_node
  end

  def insert_first(new_node)
    after_node = @first_node
    @first_node = new_node
    new_node.next_node = after_node
  end

  def insert_after(some_node, new_node)
    before_node = some_node
    after_node = some_node.next_node

    before_node.next_node = new_node
    new_node.next_node = after_node
  end

  def remove_after(some_node)
    if removed_node = some_node.next_node
      some_node.next_node = removed_node.next_node
    end
  end

  def remove_first
    second_node = @first_node.next_node
    @first_node = second_node
  end
end
