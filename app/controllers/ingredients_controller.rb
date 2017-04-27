# frozen_string_literal: true

class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    # binding.pry
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredient
  end
end
