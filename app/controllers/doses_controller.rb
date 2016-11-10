class DosesController < ApplicationController
  before_action :find_cocktail, only: [:create, :destroy]

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
