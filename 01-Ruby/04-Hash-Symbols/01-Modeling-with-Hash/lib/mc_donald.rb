HASH = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
  }

def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
   HASH[burger] + HASH[side] + HASH[beverage]
end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  calories = 0
  orders.each{|order|  calories += HASH[order]}
  puts calories
end

puts poor_calories_counter("Cheese Burger", "French fries", "Coca")
puts calories_counter("Cheese Burger", "French fries", "Coca", "Cheese Burger", "French fries", "Coca")