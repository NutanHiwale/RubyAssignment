class Josh
    def super_method
        puts "Hello"
    end
    
end
class Ruby < Josh 
    def super_method 
        puts "byee"
    end
end
a = Ruby.new
a.super_method

