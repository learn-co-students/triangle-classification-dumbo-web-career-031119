require 'pry'
class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0) || 
      (@side1 + @side2 <= @side3) ||
      (@side2 + @side3 <= @side1) ||
      (@side3 + @side1 <= @side2)
      # binding.pry
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
      :isosceles
    elsif @side1 != @side2 && @side2 != @side3
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      'triangles with no size are illegal'
    end
  end
end
