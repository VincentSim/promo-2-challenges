require 'open-uri' #sert à faire des requetes dynamiques
require 'nokogiri'

puts "which ingredient?"
ingredient =  gets.chomp

doc = Nokogiri::HTML(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}"))

doc.search('.m_search_result').each do |element|
    puts "#{element.search('.m_search_titre_recette > a').inner_text}"
    puts "Rating : #{element.search('.etoile1').size} / 5"’
  end




################################################
require 'nokogiri'

doc = Nokogiri::HTML(File.open('marminton.html'))

doc.search('.m_search_result').each do |element|
    puts "#{element.search('.m_search_titre_recette > a').inner_text}"
    puts "Rating : #{element.search('.etoile1').size} / 5}"
end

