require 'pry'
require 'pry-debugger'

class_list = ["Adi",
  "Adrian",
  "Alex",
  "Anthony",
  "Ben",
  "Brian",
  "Bryan",
  "Chloe",
  "Eric",
  "Jane",
  "Jeff",
  "Jillian",
  "Joe",
  "Luke",
  "Matt",
  "Nick",
  "Nicky",
  "Ralph",
  "Ron",
  "Ryan",
  "Sandip",
  "Sean",
  "Shefali",
  "Simon",
  "Stephen"]

class_size = class_list.count

if class_size == 25
  puts "You have 25 students!"
else
  print "Are you sure you have the right number of students? "
end

print "Please enter the group size: "
group_size = gets.to_i

# This part will shuffle the array
class_list = class_list.shuffle

total_group = class_size/group_size

puts "There are #{total_group} groups"

x = 0
# binding.pry
group_number = 1
extra_student_num = class_size % group_size
while x < class_size
  if x == 0 && x < class_size
    y = group_size -1
    group = class_list[x..y]
    puts "This is the #{group}"
    group_number =  group_number + 1
  else
    if (group_number < total_group)
      x = x + 1
      y = x + group_size - 1
      group = class_list[x..y]
      puts "This is the #{group}"
      group_number = group_number + 1
    elsif (group_number == total_group)
      x = x + 1
      y = x + group_size - 1
      group = class_list[x..y]
      class_extras = class_list.pop(extra_student_num)
      group = group.push(class_extras)
      group = group.flatten
      puts "This is the #{group}"
      group_number = group_number + 1
    else
      x = 60
      exit
    end
  end
  x = y
end



puts "Next Group: "

