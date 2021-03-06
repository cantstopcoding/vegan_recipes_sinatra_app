class UsersController < ApplicationController

    get '/login' do 
        erb :'users/login'
    end  

    post '/login' do 
        # find user
        user = User.find_by(email: params[:email])
        # authenticate the user
        if !!user && user.authenticate(params[:password])
            # log them in
            # create a user key/value pair in the session hash for the user if they actually get logged in
            session[:user_id] = user.id
            # add success message to flash hash
            flash[:message] = "Welcome Back #{user.name}!"
            # redirect user's profile (user's show)
            redirect "/users/#{user.id}"
        else  
            # show error message
            flash[:error] = "Invalid credentials. Try again!"

            redirect "/login"
        end 
    end

    get '/signup' do 
        erb :'users/signup' 
    end

    get '/users' do 
        @users = User.all 
        erb :'users/index' 
    end

    post '/users' do
        
        @user = User.new(name: params[:name], bio: params[:bio], image_url: params[:image_url], email: params[:email], password: params[:password])

        if @user.save 
            flash[:message] = "User Created Successfully. Welcome, #{@user.name}!"
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        else
            flash[:error] = "Error: #{@user.errors.full_messages.to_sentence}"
            redirect "/signup"
        end

    end 

    get '/users/:id' do 
        if logged_in?
            @user = User.find_by_id(params[:id])
            erb :'users/show'
        else
            flash[:error] = "Please log in or sign up to view this profile!"
            redirect '/'
        end
    end

    get '/users/:id/edit' do 
        @user = User.find(params[:id])
        
        if authorized_to_edit_user?
            erb :'users/edit'
        else
            flash[:error] = "You are not authorized to update that user!"
            redirect "/"
        end
    end 

    patch '/users/:id' do 
        @user = User.find(params[:id])
        @user.update(name: params[:name], email: params[:email], password: params[:password], bio: params[:bio], image_url: params[:image_url])
        redirect "/users/#{@user.id}"
    end  
   
    get '/logout' do 
        session.clear
        redirect '/'
    end
  
    delete '/users/:id' do 
        session.clear 
        @user = User.find(params[:id])
        @user.destroy 
        flash[:error] = "Profile Deleted"
        redirect '/'
    end
end