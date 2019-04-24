class Triangle

  class TriangleError < StandardError
    def message
      "Triangles must consist of sides whose lengths are > 0 additionally,
      no side must exceed the sum of the other two sides!"
  end
end
