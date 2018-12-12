class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end


  def show
    @ingredient = Ingredient.find(params[:id])

  end


  def new
    @ingredient = Ingredient.new
  end


  def create #form to add an ingredient to a recipe and associate it with current recipe
    @ingredient = Ingredient.create(ingredient_params) #creats new ingredient with strong params
    @recipe = Recipe.find(params[:ingredient][:recipe_id]) #takes in current recipe found in params hash
    if @ingredient.valid? #checks to see if new ingredient was already entered in
      RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ingredient.id) #creates new association of new ingredient with current recipe
      redirect_to recipe_path(@recipe) #route to recipe show page passing in @recipe containing :id
    else
      flash[:error] = "This ingredient exists already" #if new ingredient not vaild, flash error and print on recipe view page
      redirect_to recipe_path(@recipe) #route ro recipe show page (allowing for new entry)
    end
  end



  def edit

  end


  def update

  end


  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end


end
