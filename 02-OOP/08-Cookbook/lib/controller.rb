require_relative 'cookbook'

class Controller

  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @cookbook = Cookbook.new(file)
  end

  def list
    @cookbook.all
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
  def add(recipe)
    @cookbook.create(recipe)
    @cookbook.save
  end

  def delete(recipe)
    @cookbook.destroy(recipe)
    @cookbook.save
  end

  def web_import(recipe)
    @cookbook.import(recipe)
    @cookbook.save
end
