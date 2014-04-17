class Restaurant
  #TODO add relevant accessors if necessary

  attr_reader :average_rating, :city, :name

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = 0
    @name_rate = []
  end

  #TODO: implement #filter_by_city and #rate methods

  def self.filter_by_city(arg=[], city)
    result = []
    result << arg.pop {|resto| resto if resto.city == city}
  end


  def rate(x)
    @name_rate << x
    @average_rating = @name_rate.reduce(:+)/@name_rate.length
  end
end
