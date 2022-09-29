class Human
    def identify
        print "I'm a person.\n"
    end
    def train_toll(age)
        if age < 12
            print "Reduced fare.\n";
        else
            print "Normal fare.\n"
        end
    end
end

Human.new.identify
Human.new.train_toll(15)

class Student1<Human
    def identify
        super 
        print "I'm a student.\n"
    end
end
Human.new.identify
Student1.new.identify 