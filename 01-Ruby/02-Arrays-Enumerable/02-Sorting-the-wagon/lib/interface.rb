require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array
  students << name if name != ""

end while name != ""


wagon = wagon_sort(students)
dernier_eleve = wagon.delete(wagon.last)
liste = wagon * ", "

if  wagon_sort(students).length > 1
puts "Congratulations ! Your wagon has #{wagon_sort(students).length} students :
#{liste} and #{dernier_eleve}"

else
  puts "Congratulations ! Your wagon has 1 student : #{dernier_eleve}"
end
# printer ts les eleves



# TODO: Call `wagon_sort` method and display the sorted student list
