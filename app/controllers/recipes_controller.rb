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

    post '/recipes' do 
        # binding.pry
        recipe = Recipe.create(title: params[:title], image_url: params[:image_url], ingredients: params[:ingredients], instructions: params[:instructions], user_id: current_user.id)

        redirect "/recipes/#{recipe.id}"
    end

    get '/recipes/:id' do 
        @recipe = Recipe.find(params[:id])
        erb :'/recipes/show'
    end

    # Update
    get '/recipes/edit/:id' do 
        @recipe = Recipe.find(params[:id])

        if authorized_to_edit?(@recipe)
            erb :'recipes/edit'
        else
            redirect '/recipes'
        end
    end 

    # Delete
end
