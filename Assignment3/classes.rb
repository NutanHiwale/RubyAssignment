class Josh
    def initialize(state = "High")
        @state = state
    end

    def say
        puts "How's the Josh:"
        puts "#{@state} Sir"
    end
end
 
a = Josh.new
a.say
