class Bird
    def preen 
        puts "I am cleaning my feathers"
    end 
    def fly
        puts "I am flying"
    end
end 

class Penguin<Bird
    def fly
        puts "sorry. I'd rather swim."
    end
end
a = Penguin.new
a.fly
a.preen 
