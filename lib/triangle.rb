class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(l, m , n)
    @s1 = l
    @s2 = m
    @s3 = n
  end

  def kind
    if @s1 == 0 || @s2 == 0 || @s3 == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      case
      when @s1 == @s2 || @s2 == @s3 || @s1 == @s3
        :isosceles
      when @s1 == @s2 && @s1 == @s3
        :equilateral
      when @s1 != @s2 && @s1 != @s3 && @s2 != @s3
        :scalene
      end
    end
  end

  def
  class TriangleError < StandardError
    def message
      "Triangles must consist of sides whose lengths are > 0 additionally,
      no side must exceed the sum of the other two sides!"
    end
  end
end
