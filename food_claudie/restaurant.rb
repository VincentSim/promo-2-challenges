require_relative "order"
require_relative "customer"

class Restaurant

  attr_reader :name, :adress, :menu, :list_customers, :list_order
  attr_accessor :list_employees

  def initialize(name, address)
    @name = name
    @address = address
    @list_employees = []
    @menu = {main: "salade caesar"}
    @list_customers = []
    @list_order = []
  end

  def retrieve_list_customers
    @list_customers
  end

  def add_customer(customer)
    @list_customers << customer
  end

  def add_order(order)
    @list_order << order
  end

  def cancel_order(number)
    unless @list_order[number].assigned_to == "unassigned"
      @list_employees.each do |d_boy|
        d_boy.orders.delete_if {|order| order == @list_order[number]} unless d_boy.class == Manager
      end
    end
    @list_order.delete_at(number)
  end

  def retrieve_list_orders
    @list_order
  end

end

#chez_claudie = Restaurant.new("Chez Claudie", "3 rue de l'échaudée")
#john = Manager.new("John","labiteadudule", "Chez Claudie")
#thomas = Customer.new("Thomas", "Rue du petit Musc")
#
#chez_claudie.list_employees << john
#chez_claudie.list_customers << thomas
#p chez_claudie


