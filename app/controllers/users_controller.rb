class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    @users = User.all
    erb :"/users/index.html"
  end
  get "/users/" do
    redirect "/users"
  end

  # GET: /users/new
  get "/users/new" do
    redirect "/"
  end

  # POST: /users
  post "/users" do
    @user = User.create(params)
    redirect "/users/#{ @user.id }"
  end

  # GET: /users/5
  get "/users/:id" do
    @user = User.find(params[:id])

    @album_array = []
    if Album.find_by(:user_id => params[:id]) == nil
      @album_array = []
    else 
      Album.find_each do |album|
        @album_array << album if album.user_id == @user.id
      end
    end     #ends if

    # Albums.all.each do |album|
    #   if album.user_id == @user.id 
    #     @album_array << album 
    #   end

    # end

    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    if logged_in?
      @current = current_user 
    else
      @error = "You can't view that!"
    end

    if @current 
      @error = "You can't view that!" if @current.id != session[:user_id]
    end
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    @user = User.find(params[:id])
    @user.update(:username => params[:username])
    redirect "/users/#{@user.id}"
  end 

  # DELETE: /users/5/delete
  delete "/users/:id" do
    User.destroy(params[:id])
    redirect "/logout"
  end
end
