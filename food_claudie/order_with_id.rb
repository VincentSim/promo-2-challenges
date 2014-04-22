class Order

  attr_reader :customer, :id_order
  attr_accessor :d_boy, :status

  def initialize(customer, d_boy = nil)
    @status = :pending
    @customer = customer
    if d_boy
      d_boy.add_order(self)


    @@id ||= [1]      #permet d'initiliser une fois seulement 'faire un compteur'
    @id_order = @@id.last + 1
    @@id << @id_order

  end

end
