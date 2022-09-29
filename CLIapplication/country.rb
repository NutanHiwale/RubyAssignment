module Qualification
    def loan 
        if (6..9) === gdp
            puts "#{name} can get loan International Monetory Fund"
        elsif (3..5) === gdp 
            puts "#{name} can get loan from World Bank"
        else
            puts "#{name} cannot get loan from any bank"
        end
    end

    def un_seat
        if soc == "developed"
            puts "#{name} will get a seat in United Nations Security Council"
        else
            puts "#{name} will not get a seat in United Nations Security Council"
        end
    end

    def war 
        if army > 5000
            puts "#{name} will win the war"
        else 
            puts "#{name} will not win the war"
        end
    end

end





class Country
    attr_accessor :name, :population, :gdp, :states, :army, :soc
    def initialize
        @name = name
        @population = population
        @gdp = gdp
        @states = states
        @army = army 
        @soc = soc 
    end

    include Qualification


end


puts "Country Details"

arr = Array.new

loop do


puts "1. Create"
puts "2. Read"
puts "3. Update"
puts "4. Delete"
puts "5. Details of Loan and War about the Country"
puts "6. Exit"


crud = gets.to_i

case crud
    when 1
        c= Country.new
        puts "Enter name of country: "
        c.name = gets.chomp
        puts "Enter Population: "
        c.population = gets.chomp
        puts "Enter GDP: "
        c.gdp = gets.to_i
        puts "Enter no. of States in the country: "
        c.states = gets.to_i
        puts "Enter total army strength: "
        c.army = gets.to_i
        puts "Enter the state of country(developed/developing): "   
        c.soc = gets.chomp
        arr.push(c)
    when 2 
        puts "Enter the name of country: "
        nam = gets.chomp
        arr.each do |i| 
            if nam == i.name
                puts "Population = #{i.population}"
                puts "GDP = #{i.gdp}"
                puts "States = #{i.states}"
                puts "Army Strength = #{i.army}"
                puts "State of country = #{i.soc}"
                break
            else
                puts "#{nam} not present in the database"
            end
        end

    when 3
        puts "Enter the name of country whose attribute you want to update: "
        nam = gets.chomp
        arr.each do |i| 
            if nam == i.name
                loop do
                    puts "1. Name"
                    puts "2. Population"
                    puts "3. GDP"
                    puts "4. States"
                    puts "5. Army Strength"
                    puts "6. State of Country"


                    choose = gets.to_i
                    case choose
                        when 1
                            puts "Enter updated name: "
                            new_name = gets.chomp
                            i.name = new_name
                        when 2
                            puts "Enter updated value for population: "
                            new_population = gets.chomp
                            i.population = new_population
                        when 3
                            puts "Enter updated value for GDP: "
                            new_gdp = gets.chomp
                            i.gdp = new_gdp
                        when 4
                            puts "Enter updated value for states: "
                            new_states = gets.chomp
                            i.states = new_states
                        when 5
                            puts "Enter updated value for army: "
                            new_army = gets.chomp
                            i.army = new_army
                        when 6
                            puts "Enter updated value for State of Country: "
                            new_soc = gets.chomp
                            i.soc = new_soc
                        end
                    puts "Do you want to update again?"
                    puts "1. Yes"
                    puts "2. No"
                    update = gets.to_i
                    if update == 2
                        break
                    end
                end
            break
            end
        end
    when 4
        puts "Enter the name of country for which you want to delete all of its attributes: "
        nam = gets.chomp
        ind=1
        arr.each do |i| 
            if nam == i.name
                puts "#{i.name} successfully deleted"
                arr.delete_at(ind)
                break
            ind+=1
            end
        end

    when 5
        puts "Enter the name of country for which you want the details: "
        nam = gets.chomp
        arr.each do |c|
            if nam == c.name
                loop do
                    puts "1. Loan Sanction of the country"
                    puts "2. Seat in UN Security Council"
                    puts "3. Country's war results"
                    choice = gets.to_i 
                    case choice
                        when 1
                            c.loan
                        when 2
                            c.un_seat
                        when 3
                            c.war
                        end

                    puts "Do you want to continue?(y/n)"
                    ans = gets.chomp

                    if ans == "n"
                        break
                    end
                end
            end
        end

    when 6
        break
    end
end
