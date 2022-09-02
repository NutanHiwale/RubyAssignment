puts "Enter a number:"
number = gets.to_i
x=0

(2..number/2).each do |a|
    if number%2 == 0 
        x=1
    end
end
puts "#{x==1? "Number is not Prime" : "Number is Prime"}"
