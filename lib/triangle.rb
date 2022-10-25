# class Triangle
#     attr_accessor :a, :b, :c
#     def initialize(a,b,c)
#       @a=a
#       @b=b
#       @c=c
#     end
#     def kind
#       check_size (@a,@b,@c) 
#       if (@a=@b && @b=@c && @a=@c){
#        :equilateral
#       }
#     elsif (@a=@b || @b=@c || @a=@c){
#       :isosceles
#       }else{
#         :scalene
#       }
#     end
#     end

    


  # class TriangleError
   class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  def kind
    if triangle_valid? && triangle_existent?
      if @length1 == @length2 && @length1 == @length3
        :equilateral
      elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  def triangle_valid?
    @length1 + @length2 > @length3 &&
    @length2 + @length3 > @length1 &&
    @length1 + @length3 > @length2
  end
  def triangle_existent?
    [length1, length2, length3].all? { |length| length > 0 }
  end
  class TriangleError < StandardError
    def msg
      "GUYS! Come look at this clown who doesn't know what Triangles look like!"
    end
  end
end