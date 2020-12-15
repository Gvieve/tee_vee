class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main = []
    @shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name
          main << character
        end
      end
    end
  end

  def actors_by_show
    shows_and_actors = {}
    @shows.each do |show|
      if shows_and_actors[show]
        shows_and_actors[show].push(show)
      else
        shows_and_actors[show] = [show.actors].flatten
      end
    end

    shows_and_actors
  end
end
