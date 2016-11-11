class CocktailsController < ApplicationController
  before_action :find_cockail, only: [:show, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render 'cocktails/new'
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
  end

  private

  def find_cockail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, photos: [])
  end
end
