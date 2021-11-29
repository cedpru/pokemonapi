class Api::V1::PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :update, :destroy]

  # GET /pokemons
  def index
    if params[:page]
      paginate Pokemon.unscoped, per_page: 15
    else
      @pokemons = Pokemon.all
      render json: @pokemons
    end
  end

  # GET /pokemons/1
  def show
    render json: @pokemon
  end

  # POST /pokemons
  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save
      render json: @pokemon, status: :created, location: [:api, :v1, @pokemon]
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemons/1
  def update
    if @pokemon.update(pokemon_params)
      render json: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemons/1
  def destroy
    @pokemon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemon_params
      params.require(:pokemon).permit(:number, :name, :type1, :type2, :total, :hp, :attack, :defense, :spAtk, :spDef, :speed, :generation, :legendary)
    end
end
