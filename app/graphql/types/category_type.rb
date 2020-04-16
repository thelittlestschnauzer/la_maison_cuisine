module Types
  class CategoryType < Types::BaseObject
    field :recipes, [Types::RecipeType], null: true

    field :id, ID, null: false
    field :name, String, null: false 


  end 
end