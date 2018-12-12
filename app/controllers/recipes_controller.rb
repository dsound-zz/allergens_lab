class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    if params[:order] == true #checks to see if :order is in params
      @recipes = Recipe.sort_by { |recipe| recipe.ingredients.length } #sorts all instances of recipes by length of ingredients
    else
      @recipes = Recipe.all
    end
  end

  def new
    @recipe = Recipe.new
    @ingredient = Ingredient.new
  end

  def show
    @recipe = Recipe.find(params[:id])
    if @recipe.user == nil #if no user then throw error message
      @user_message = "No user yet!"
    else
      @user_message = @recipe.user.name #otherwise throw user associated with this recipe
    end
    @ingredient = Ingredient.new
  end


  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end



  def edit
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.new
  end


  def update
    @recipe = Recipe.find(params[:id])
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id)
  end

end
