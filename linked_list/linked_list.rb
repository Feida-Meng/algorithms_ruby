class Node
  attr_accessor :data, :nextn
  def initialize(data)
    @data = data
    @next = nil
  end
end

class Linked_list
  attr_accessor :root, :size
  def initialize
    @root = nil
    @size = 0
  end

  def append(item)
    if @size == 0
      @root = item
    else
      current = @root
      while current.nextn
        current = current.nextn
      end
      current.nextn = item
    end
    @size += 1
  end

  def get_node_index(i)
    return nil if i > @size - 1
    current = root
    n = 0
    while n != i
      current = current.nextn
      n += 1
    end
    current.data
  end

  def show_all
    return nil if @size == 0
    current = @root
    while current != nil
      puts current.data
      current = current.nextn
    end

  end

end
