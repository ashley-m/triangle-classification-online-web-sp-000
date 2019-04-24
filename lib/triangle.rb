class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(l, m , n)
    @s1 = l
    @s2 = m
    @s3 = n
  end
  def kind
  end
  class TriangleError < StandardError
    def message
      "Triangles must consist of sides whose lengths are > 0 additionally,
      no side must exceed the sum of the other two sides!"
  end
end
