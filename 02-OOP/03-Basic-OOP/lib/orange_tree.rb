class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @fruit_count = 0
  end

attr_reader :height

#on definit ici l'age de l'arbre en fonction du temps
  def one_year_passes!
    fruit_count = 0
    @age += 1
  end

#on definit ici si l'arbre est encore en vie ou non
  def dead?
    if @age <= 50
      false
    elsif @age < 100
      true
    else
      true
    end
  end

#on definit ici la hauteur de l'arbre en fonction de son age
  def height
    if @age < 10
      @height = @age
    else
      @height = 10
    end
  end

#on définit ici le nombre de fruits par ans
#données par l'arbre en fonction de son age
  def fruits
    if @age  < 6
      0
    elsif @age < 11
      100 - @fruit_count
    elsif @age < 16
      200 - @fruit_count
    else
      0
    end
  end

#on définit ici le fait qu'un passant puisse prendre un fruit
  def pick_a_fruit!
    @fruits -= 1
    @fruit_count +=1
  end

end




###########Solution 1#######################
class Animal
  def breathe

  end
end
###########Solution 2#######################
class Dog < Animal         #Dog herite des méthode d'instance
  def bark                 #mais aussi des variables d'instance
    "Woof"                 #mais pas des 'private'
  end
end

#########################################################
deck =  Deck.new

deck.fill_deck

#######################################################
class Grader
  def self.average(grades)
    # TODO Compute average
  end
end

Grader.average([15, 12, 18]) #on a bien une méthode de classe

#Il est mieux de faire sans mais bon.........

#on peut surcharger une méthode = la réassigner
class Animal
  def breathe
    "Ibreath"
  end
end

class Dog < Animal
  def breathe
    print "I am a dog and"
    super #on rappelle la méthode de la classe parent
  end
end

class Cat < Animal
end

puts Cat.new.breathe
puts Dog.new.breathe







































