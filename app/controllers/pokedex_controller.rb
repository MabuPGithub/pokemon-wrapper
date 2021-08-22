class PokedexController < ApplicationController
    def index
        @pokemon = Pokemon.search(params[:search])
        @evolution = Evolution.search(params[:search])
        @nature = Nature.search(params[:search])
        @habitat = Habitat.search(params[:search])
        @color = Color.search(params[:search])
    end

    
end