puts "enter ip adddress: "
ip = gets 

if  (ip.match(/^[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}$/))
    puts "ip is valid"
    d = ip.split
   address = d[0].to_i

   if address>=1 && address<=127
    puts "ClassA"
   elsif address>=128 && address<=191
    puts "Class B"
   elsif address>=192 && address<=223
    puts "class C"
   elsif address>=224 && address<=239
    puts "class D"
   else 
    puts "Class E"
   end 
else 
    puts "invalid address"
end 


 
        