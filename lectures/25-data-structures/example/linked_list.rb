class LinkedList
  attr_reader :root
  def initialize(data)
    @root = Node.new(data)
  end

  def insert(data)
    new_node = Node.new(data)
    current_node = root
    while current_node.has_next?
      current_node = current_node.next
    end
    current_node.next = new_node
  end
end

class Node
  attr_reader :data
  attr_accessor :next
  def initialize(data)
    @data = data
    @next = nil
  end

  def has_next?
    !!next
  end
end

ll = LinkedList.new(10) # [10] -> nil
ll.insert(20) # [10] -> [20] -> nil
ll.insert(30) # [10] -> [20] -> [30]
ll.insert(0)
ll.last # => 0
ll.value_at(1) # => 20
