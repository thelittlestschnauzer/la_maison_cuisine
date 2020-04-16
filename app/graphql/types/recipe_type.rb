module Types
  class RecipeType < Types::BaseObject
    field :category, Types::CategoryType, null: true

    field :id, ID, null: false
    
    field :title, String, null: false 
    field :description, String, null: false 
    field :serves, String, null: false 
    field :cook_time, String, null: false 


  end 
end