class Human 
    def age(n)
        puts "My age is #{n}"
    end
end

class Student3 < Human
    def age(n) 
        super
        puts "I am still young"
    end
end
Student3.new.age(20)