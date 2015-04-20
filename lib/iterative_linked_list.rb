class IterativeLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(node)
    if head.nil?
      self.head = node
    else
      current = head
      until current.link.nil?
        current = current.link
      end
      current.link = node
    end
  end

  def count
    return 0 if head.nil?

    total = 1
    current = head
    until current.link.nil?
      current = current.link
      total += 1
    end
    total
  end

  def tail
    return head if head.nil?

    current = head
    until current.link.nil?
      current = current.link
    end
    current
  end

  def pop
    return head if head.nil?

    if count == 1
      node = head
      self.head = nil
      node
    else
      prev = head
      current = head.link

      until current.link.nil?
        prev = current
        current = current.link
      end

      prev.link = nil
      current
    end
  end

  def [](index)
    return nil if index > (count - 1)

    location = 0
    current = head
    until location == index
      current = current.link
      location += 1
    end
    current
  end

  def shift
    return head if head.nil?

    first_node = head
    self.head = head.link
    first_node
  end

  def unshift(node)
    if head.nil?
      self.head = node
    else
      linked_node = head
      self.head = node
      node.link = linked_node
    end
  end

  def delete(node_data)
  end

end
