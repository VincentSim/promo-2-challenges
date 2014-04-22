require_relative "order"
require_relative "customer"
require_relative "restaurant"
require_relative "customer"
require_relative "employee"

class UI

  TASKSMANAGER = {
    listor:  "- List all orders [listor]",
    add:     "- Add a new orders [add]",
    ass:     "- Assign orders [ass]",
    listcu:  "- List all customers [listcu]",
    cancel:  "- Cancel an order [cancel]",
    exit:    "- Exit [exit]"
  }

  TASKSDBOY = {
    vieworder:  "- List my orders [vieworder]",
    tick:       "- Tick an order [tick]",
    exit:       "- Exit [exit]"
  }



  def initialize(restaurant)
   # @controller = controller
    @restaurant = restaurant
    @running = true
  end

  def user_input
    user_answer = gets.chomp
  end

  def display
    puts "-- Welcome to Alf 9000 --"

    while @running
      print "\n"

      user_class = authenticate
      puts user_class
      break unless user_class
      display_tasks(user_class)
      dispatch(user_input)

      print "\n"
    end
    @running = false
  end

  def display_tasks(user_class)
    puts "What do you want to do? \n"
    if user_class == Manager.class
      puts TASKSMANAGER.values
    elsif user_class == D_Boy.class
      puts TASKSDBOY.values
    else
      "Not allowed"
    end
  end

  def dispatch(task)
    self.send(task.to_sym)
  end

  def authenticate
    puts "What's your name?"
    employee = user_input

    puts "What's your password?"
    password = user_input

    if @restaurant.list_employees.include?(employee.downcase)
      if @restaurant.list_employees.each {|bogus| bogus if bogus.name == employee }.password == password
        employee.class
      else
        puts "Wrong password"
      end
    else
      puts "No user with this name"
    end
  end
end

#############################################################################

chez_claudie = Restaurant.new("Chez Claudie", "3 rue de l'échaudée")
brandon = Manager.new("Brandon", "1234")
momo = D_boy.new("Momo","0000")
chez_claudie.list_employees << brandon << momo
vincent = Customer.new("Vincent", "64 rue du jeu")
quick_please = Order.new(chez_claudie, vincent)
brandon.assign_order(quick_please, momo)

alf = UI.new(chez_claudie)

alf.display







#ruby restaurant.rb
#> Welcome to CORBA SALONU
#> -------------------------------
#> Please enter your username:
#> john_doe
#> Please enter your password:
#> ********
#> -------------------------------
#> Welcome, john_doe.  Your access level is : MANAGER
#> -------------------------------
#> What would you like to do?
#> Options:
#> 1. List customers
#> 2. Add customer
#> 3. View orders <customer_id>
#> 4. Add order <customer_id>, <employee_id_>
#> 5. Remove order <order_id>
#> 6. List employees
#> 7. Log out#