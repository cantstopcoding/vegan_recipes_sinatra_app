class UsersController < ApplicationController

    get '/login' do 
        erb :login
    end

    post '/login' do 
        # find user
        user = User.find_by(email: params[:email])
        # authenticate the user
        # log them in
        # redirect user's profile (user's show)
    end

end