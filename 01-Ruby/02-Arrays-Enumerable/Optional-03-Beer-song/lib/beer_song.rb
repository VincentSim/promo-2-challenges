def beersong(nb_at_start)
  #TODO: sing the song
  if nb_at_start == 1
     puts "1 bottle of beer on the wall, 1 bottle of beer! \nTake one down, pass it around, no more bottles of beer on the wall!"
  else
    for i in 0..nb_at_start-1
      "Vévé"*(nb_at_start-i)
    end
end
end

beersong(3)
