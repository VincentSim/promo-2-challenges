class Animal
  # Modify the following methods to enable chaining !
  def self.name(name)
    @name = name
    #TODO: find good instruction

  end

  def self.specie(specie)
    @specie = specie
    #TODO: find good instruction

  end

  def self.color(color)
    @color = color
    #TODO: find good instruction
    self.inspect
  end

  def self.natural_habitat(natural_habitat)
    @natural_habitat = natural_habitat
    #TODO: find good instruction

  end

  def to_s
    "Name: #{@name}, Specie: #{@specie}, Color: #{@color}, Natural Habitat: #{@natural_habitat}"
  end

end