class Company2
    def initialize(name)
        @name = name
    end
    def name
        @name
    end
end

company = Company2.new("Josh Software")

puts company.name