require "csv" #recherche les install ruby
require_relative "recipe"

class Cookbook

  attr_reader :recipes


  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    csv_to_array(@file)
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.

  def csv_to_array(file)
    @recipes = []
    CSV.foreach(file){|row| @recipes << Recipe.new(row[0], row[1].to_i, row[2].to_i, row[3].to_i)}
  end


  def create(name, rating, cook_time, prep_time)
    @recipes << Recipe.new(name, rating, cook_time, prep_time)
  end

  def destroy(i)
    @recipes.slice!(i)
    @recipes
  end

  def save
    CSV.open(@file, "w") do |csv|
      @recipes.each{|recipe| csv << [recipe.name, recipe.rating, recipe.cook_time, recipe.prep_time]}
    end
  end

  def all
    @recipes
  end

  #def import(recipe)
    #doc = Nokogiri::HTML(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{recipe}"))

    #doc.search('.m_search_result').each do |element|
    #  puts "#{element.search('.m_search_titre_recette > a').inner_text}"
    #  puts "Rating : #{element.search('.etoile1').size} / 5"
    #  puts "temps de preparation : #{element.search('.m_search_result_part4').inner_text.match(/[\d]+\s+[min]+/)}"
   #  puts "temps de cuisson : #{element.search('.m_search_result_part4').inner_text.split(/[\s+]+[\D+]+/)[2]} min"
  #end

end

mycookbook = Cookbook.new('lib/recipes.csv')
mycookbook.create("endives au jambon", 4, 20, 10)

mycookbook.all.each do |recipe|
  p recipe.name
  p recipe.rating
  mycookbook.destroy(4)

  end

