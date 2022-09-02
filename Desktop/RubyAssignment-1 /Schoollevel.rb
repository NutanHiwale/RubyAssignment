puts "Enter school grade:"
$grade = gets.to_i

if $grade >0
    case $grade
    when 1..5
        puts "Elementry"
    when 6..8 
        puts "Middle school"
    when 9..12
        puts "High School"
    else 
        puts "College"
    end
else
    puts "invalid grade"
end
