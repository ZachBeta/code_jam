class Stack
  def initialize
    @stack = Array.new
  end

  def push(val)
    @stack.push(val)
    return val
  end

  def top
    return @stack.last
  end

  def pop
    return @stack.pop
  end

  def is_empty?
    return @stack.empty?
  end
end
