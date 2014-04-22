class Customer

  attr_reader :name, :address, :id_customer

  def initialize(name, address)
    @name = name
    @address = address
    @@id ||= [1]      #permet d'initiliser une fois seulement 'faire un compteur'
    @id_customer = @@id.last + 1
    @@id << @id_customer
  end

end

