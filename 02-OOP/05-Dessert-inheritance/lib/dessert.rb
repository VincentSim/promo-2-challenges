class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

attr_writer :name, :calories

  def healthy?
    if  @calories < 200
      true
    else
      false
    end
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

attr_reader :flavor

  def delicious?
    unless @flavor == "black licorice"
     true
    else
     false
    end
  end

end