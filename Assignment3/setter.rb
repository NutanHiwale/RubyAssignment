class Company
    def initialize(name)
        @name = name
    end

    #setter
    def set_name(name)
        @name = name
    end
end

company = Company.new("The Bluth company")
puts Company.name 
puts company.set_name("Josh")



