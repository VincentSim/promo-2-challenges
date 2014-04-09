require_relative "wagon_sort"

students = []

name = gets.chomp

until name == ""
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  students << name
  name = gets.chomp
end


wagon = wagon_sort(students)

puts "congratulations ! Your wagon has #{wagon.length} students"
# printer ts les eleves



# TODO: Call `wagon_sort` method and display the sorted student list
