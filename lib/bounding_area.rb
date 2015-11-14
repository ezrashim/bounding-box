require_relative 'bounding_box'

class BoundingArea
attr_accessor :area
  def initialize(area)
    @area = area
  end

  def boxes_contain_point?(x, y)
    count = 0
    area.each do |box|
      count += 1 if (x >= box.left) && (x <= box.right) && (y >= box.bottom) && (y <= box.top)
    end
    count > 0
  end
end
