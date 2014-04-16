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
