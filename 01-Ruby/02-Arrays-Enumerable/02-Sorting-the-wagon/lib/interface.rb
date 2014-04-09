require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name
  students << name
  # TODO: Add the name we just gotto the students array

end while name != ""

wagon = wagon_sort(students)
wagon.each do |eleve| puts "-#{eleve}"
end


# TODO: Call `wagon_sort` method and display the sorted student list
