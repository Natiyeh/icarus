class PokemonController < ApplicationController

  POKEMON = {
    1 => { name: "Gloom", location: "Route 28", category: "Grass" },
    2 => { name: "Pikachu", location: "Route 3", category: "Electric" }
  }

  def index
    @category = params[:pokemon_type]
    if params[:pokemon_type].blank?
      @pokemon = POKEMON
    else
      @pokemon = POKEMON.select { |id, r| r[:category] == @category }
    end
  end

  def create
    raise
    puts "TODO: create the pokemon in the DB"
  end

end
