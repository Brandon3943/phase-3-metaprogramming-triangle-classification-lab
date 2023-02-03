require "pry"


class Triangle
  # write code here
  
  attr_accessor :side_one, :side_two, :side_three

  def initialize side_one, side_two, side_three
   @side_one= side_one
   @side_two= side_two
   @side_three= side_three
  end

  def kind
    no_sides
    valdiate
    if side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    else
      :scalene
    end
  end

  def no_sides
    if side_one <= 0|| side_two <= 0 || side_three <= 0
      raise TriangleError
    end
  end

def valdiate
  if side_one + side_two <= side_three || side_one + side_three <= side_two || side_two + side_three <= side_one
    raise TriangleError
  end
end



  class TriangleError < StandardError
  end



end


