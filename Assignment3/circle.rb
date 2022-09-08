class Circle
    #constructor method 
    def initialize (r)
        @radius = r
    end
    #instance methos
    def getArea
        3.14 * @radius * @radius 
    end
end

#create an object
circle = Circle.new(2)

#call instance method 
a = circle.getArea()

puts "Area of the box is: #{a}"
