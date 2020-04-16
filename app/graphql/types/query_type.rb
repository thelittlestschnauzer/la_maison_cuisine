module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :categories, [Types::CategoryType], null: false do 
      description 'Find all categories'
    end 

    field :category, Types::CategoryType, null: false do 
      description 'Find a category by ID'
      argument :id, ID, required: true
    end 

    field :recipes, [Types::RecipeType], null: false do
      description 'Find all categories'
    end

    field :recipe, [Types::RecipeType], null: false do
      description 'Find a category by ID'
      argument :id ID, required: true
    end
    
    def categories 
      Category.all 
    end 

    def category(id:)
      Category.find(id)
    end

    def recipes 
      Recipe.all 
    end 

    def recipe(id:)
      Recipe.find(id) 
    end 

  end
end
