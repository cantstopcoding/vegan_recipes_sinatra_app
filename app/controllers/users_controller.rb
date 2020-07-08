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

    post '/users' do 
        @user = User.create(params)
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}"
    end 

    get '/users/:id' do 
        if logged_in?
            @user = User.find_by_id(params[:id])
            erb :'users/show'
        else
            flash[:error] = "You are not authorized to use this profile!"
            redirect '/'
        end
    end

    get '/users/:id/edit' do 
        # @user = User.find(params[:id])
        
        # erb :'users/edit'
        @user = User.find(params[:id])

        if logged_in?  && authorized_to_edit_user?(@user)
            erb :'users/edit'
        else
            flash[:error] = "You are not authorized to update this user!"
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

end