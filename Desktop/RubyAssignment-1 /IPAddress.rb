puts "Enter ip address:"
ip = gets
    if (ip.match(/^[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}$/))
        puts "ip address is valid"
        d = ip.split
        address = d[0].to_i
    
        if address>=1 && address<=100
            puts "Class A"
        elsif address>=101 && address<=200
            puts "Class B"
        elsif address>=201 && adddress<=300
            puts "Class C"
        else 
            puts "Class D"
        end
    else 
        puts "ip address is not valid"
    end

        