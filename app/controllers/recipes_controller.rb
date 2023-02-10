class RecipesController < ApplicationController
  load_and_authorize_resource

  # GET /recipes or /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1 or /recipes/1.json
  def show; end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    # @foods = current_user.foods
  end

  # POST /recipes or /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id

    if @recipe.save
      redirect_to recipes_path, notice: 'Food was added successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path
    else
      render new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.fetch(:recipe, {})
  end
end
