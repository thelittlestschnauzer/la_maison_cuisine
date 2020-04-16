class CategoryController < ApplicationController

  def index
    @categories = Category.all 
    @category = Category.new 
  end

  private 

  def category_params 
    params.require(category).permit(:image, :name)
  end 
end
