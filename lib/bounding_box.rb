class BoundingBox
attr_accessor :x, :y, :width, :height
def initialize(x, y, width, height)
  @x = x
  @y = y
  @width = width
  @height = height
end

def left
  #returns left edge
  @x
end

def right
  #returns right edge
  @x + width
end

def top
  #returns top edge
  @y + height
end

def bottom
  #returns bottom edge
  @y
end

def contains_point?(x, y)
  (x >= left) && (x <= right) && (y >= bottom) && (y <= top)
end

end
