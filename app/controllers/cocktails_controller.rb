class CocktailsController < ApplicationController
  def index
    @cockatail = Cocktail.all
  end

  def show
  end

  def create
    @cocktail = Cocktail.new
  end

  def new
  end
end
