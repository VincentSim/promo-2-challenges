 #Encoding: utf-8
require 'csv'
require 'date'



def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year
  array = []
 CSV.foreach(file_name) do |row|
    hash = {  name: row[0],
    year: row[1].to_i,
    earnings: row[2].to_i
    }

    array << hash
  end

tableau_par_annee = array.sort_by { |hsh| hsh[:earnings] }.reverse!
resultat = tableau_par_annee.select { |hsh| hsh[:year] < max_year }.take(number)
resultat
end

