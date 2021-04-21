class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = policy_scope(Recipe).order(created_at: :desc)
  end

  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.create(recipe_params)
    authorize @recipe
    if @recipe.save
      redirect recipe_path(@recipe)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @recipe = Recipe.update(recipe_params)
  end

  def destroy
    @recipe.destroy
    redirect recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:story, :instruction, :recipe_ingredients, :admin_id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
    authorize @recipe
end
