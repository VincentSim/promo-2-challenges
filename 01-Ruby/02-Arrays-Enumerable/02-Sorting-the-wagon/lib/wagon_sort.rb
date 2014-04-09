def wagon_sort(students)
  unless students == 0
    students.delete ("")
    students.sort_by{|nom| nom.downcase}
  end


  # TODO: return a copy of students, sorted alphabetically
end
