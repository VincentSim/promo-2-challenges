
require 'open-uri'
require 'nokogiri'
puts "Import recipes for which ingredient ?"

doc = Nokogiri::HTML(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise"))

doc.search('.m_search_result').each do |element|
    puts "#{element.search('.m_search_titre_recette > a').inner_text}"
    puts "Rating : #{element.search('.etoile1').size} / 5"
    puts "temps de preparation : #{element.search('.m_search_result_part4').inner_text.match(/[\d]+\s+[min]+/)}"
    puts "temps de cuisson : #{element.search('.m_search_result_part4').inner_text.split(/[\s+]+[\D+]+/)[2]} min"


end


