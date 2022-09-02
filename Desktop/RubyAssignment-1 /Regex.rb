# Mobile Number
puts "Enter mobile number:"
mobile_number = gets

if mobile_number.match(/^[0-9]{10}$/)
    puts "number is valid"
else
    puts "number is invalid"
end 


# Email address
puts "Enter mail_id:"
mail_id = gets 
 
if mail_id.match(/^[a-zA-Z0-9_\.]+[@][a-z]+[.][a-z]+$/)
    puts "mail_id is valid"
else
    puts "mail_id is invalid"
end


# Name
puts "Enter your name:"
name = gets

if name.match(/^[a-zA-Z \s]*$/)
    puts "Your name is valid"
else
    puts "Your name is invalid"
end

# Gender
puts "Enter gender:"
gender = gets

if gender.match(/^[M F m f]$/)
    puts "gender is valid"
else
    puts "Invalid gender"
end

# Amount
puts "Enter amount:"
amount = gets

if amount.match(/^[0-9]+.[0-9]+$/)
    puts "Valid amount"
else
    puts "Invalid amount"
end

