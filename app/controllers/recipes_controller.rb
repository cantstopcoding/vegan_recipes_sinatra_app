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
        recipe = Recipe.new(title: params[:title], image_url: params[:image_url], ingredients: params[:ingredients], instructions: params[:instructions], user_id: current_user.id)
        # binding.pry
        if recipe.save #=> .save triggers validation in the Recipe model
            flash[:message] = "Created Recipe Successfully!"
            redirect "/recipes/#{recipe.id}"
        else 
            binding.pry 
            flash[:error] = "Error: Please Fill Out All Fields"
            redirect "/recipes/new"
        end
    end

    get '/recipes/:id' do 
        # binding.pry
        @recipe = Recipe.find(params[:id])
        erb :'/recipes/show'
    end

    # Update
    get '/recipes/:id/edit' do 
        # binding.pry
        @recipe = Recipe.find(params[:id])
        erb :'recipes/edit'
    end 

    patch '/recipes/:id' do 
        @recipe = Recipe.find(params[:id])
        @recipe.update(title: params[:title], image_url: params[:image_url], ingredients: params[:ingredients], instructions: params[:instructions])
        redirect "/recipes/#{@recipe.id}"
    end

    # Delete
    delete '/recipes/:id' do 
        @recipe = Recipe.find(params[:id])
        @recipe.delete 
        redirect '/recipes'
    end
end
