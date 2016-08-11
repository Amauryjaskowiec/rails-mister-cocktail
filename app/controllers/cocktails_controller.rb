class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      @dose = Dose.new(dose_params)
      @dose.cocktail = @cocktail
      if @dose.save
        redirect_to @cocktail
      end
    else
      render :new
    end
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def dose_params
    params[:cocktail].require(:dose).permit(:description, :ingredient_id)
  end
end
