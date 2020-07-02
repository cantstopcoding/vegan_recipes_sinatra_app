class RecipesController < ApplicationController
    # Index route for all recipes (which are the ingredients and instructions)
    # Show route for a single recipes (which are the ingredients and instructions)

    # Read
    get '/recipes' do 
        @recipes = Recipe.all 
        erb :'recipes/index'
    end

    get '/recipes/:id' do 
        @recipe = Recipe.find(params[:id])
        erb :'/recipes/show'
    end
    # Create

    # Update

    # Delete
end

# create_table "recipes", force: :cascade do |t|
#     t.string   "title"
#     t.string   "image_url"
#     t.text     "ingredients"
#     t.text     "instructions"
#     t.integer  "user_id"
#     t.datetime "created_at",   null: false
#     t.datetime "updated_at",   null: false
# end