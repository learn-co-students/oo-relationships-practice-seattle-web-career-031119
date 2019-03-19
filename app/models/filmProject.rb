module FilmProject

  def star(character)
    Production.new(self, character)
  end

  def productions
    Production.all.select{|production| production.film_project == self}
  end

  def characters
    self.productions.map{|production| production.character}
  end

  def num_characters
    self.characters.count
  end

  def actors
    self.characters.map{|character| character.actor}
  end

  def num_actors
    self.actors.count
  end

end
