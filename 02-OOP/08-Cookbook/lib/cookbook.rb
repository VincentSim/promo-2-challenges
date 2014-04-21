require "csv"

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
    CSV.foreach(file){|row| @recipes << row.first}
  end

  def create(recipe)
    @recipes << recipe
  end

  def destroy(i)
    @recipes.slice!(i)
    @recipes
  end

  def save
    CSV.open(@file, "w") do |csv|
      @recipes.each{|element| csv << [element]}
    end
  end

  def all
    @recipes
  end


end
#Crumpets
#Beans & Bacon breakfast
#Plum pudding
#Apple pie
#Christmas crumble
