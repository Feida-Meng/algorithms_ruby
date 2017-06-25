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

  
end
