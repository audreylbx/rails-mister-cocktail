class CocktailsController < ApplicationController
  before_action :find_cockail, only: [:show, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def find_cockail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
