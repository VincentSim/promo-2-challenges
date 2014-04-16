class Songs
  def initialize(duree, tonalite, auteur, compositeur, producteur)
    @duree = duree
    @tonalite = tonalite
    @auteur = auteur
    @compositeur = compositeur
    @producteur = producteur
  end

  def composer_say
    "#{@compositeur} say :'I composed this song in #{@tonalite}'"
  end

  def producteur_say
    "I earn 5 times more than #{auteur} and #{compositeur}"
  end

end
