class UsersController < ApplicationController

    get '/login' do 
        erb :login
    end

    post '/login' do 
        # find user
        user = User.find_by(email: params[:email])
        # authenticate the user
        if !!user && user.authenticate(params[:password])
            # log them in
            # create a user key/value pair in the session hash for the user if they actually get logged in
            session[:user_id] = user.id
            binding.pry
            # redirect user's profile (user's show)

        else  
            # show error message
            redirect '/login'
        end 
    end

    

end