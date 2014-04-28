class UI
  TASKS = {
    web_import: "1. Import recipes from marmiton [web_import]",
    list: "2. List all recipes [list]",
    add:  "3. Add a new recipe [add]",
    del:  "4. Delete a recipe [del <recipe_id>]",
    exit: "5. Exit [exit]"
  }

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def list
    # TODO: call the appropriate controller method with the proper argument(s)
    # TODO: format and display the retrieved data in a numbered list
    puts "Your recipes :"
    @controller.list.each_with_index do |name, index|
      puts "#{index + 1}. #{recipe.name} (#{recipe.prep_time}min)"
    end
  end

  def add
    # TODO: ask the user a recipe name
    # TODO: call the appropriate controller method with the proper argument(s)
    puts "What is your delicious recipe?"
    name = gets.chomp

    puts "Enter the rating"
    rating =

    puts "What is your delicious recipe?"
    @controller.add(gets.chomp)

    puts "What is your delicious recipe?"
    @controller.add(gets.chomp)

  end

  def del
    # TODO: ask the user a recipe index
    # TODO: call the appropriate controller method with the proper argument(s)

    puts "What's the recipe index?"
    @controller.delete(gets.chomp.to_i)

  end

  def exit
    # TODO: exit the program
    # Hint: Take a look at the display method !
    @running = false
  end

  def user_input
    # TODO: Get the user input and return it
    # [OPTIONAL] You can think of the case where the user
    # enters a wrong choice.
    gets.chomp
  end

  def web_import
    puts "Import recipes for which ingredient ?"
    ingredient = gets.chomp
    @controller.web_import(ingredient)
  end

  def display
    puts "-- Welcome to the CookBook --"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)

      print "\n"
    end
  end

  ###
  ##  You don't need to modify the following methods !
  ###
  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send
  def dispatch(task)
    self.send(task.to_sym)
  end
end
