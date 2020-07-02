class RecipesController < ApplicationController
    # Index route for all recipes (which are the ingredients and instructions)
    # Show route for a single recipes (which are the ingredients and instructions)

    # Read
    get '/recipes' do 
        @recipes = Recipe.all 
        erb :'recipes/index'
    end

    # Create
    # render a form to create new post
    get '/recipes/new' do 
        erb :'recipes/new'
    end

    get '/recipes/:id' do 
        @recipe = Recipe.find(params[:id])
        erb :'/recipes/show'
    end

    # Update

    # Delete
end
