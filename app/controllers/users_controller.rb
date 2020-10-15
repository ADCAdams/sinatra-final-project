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
    @user = User.new

    erb :"/users/new.html"
  end

  # POST: /users
  post "/users" do
    @user = User.create(params)
    redirect "/users/#{ @user.id }"
  end

  # GET: /users/5
  get "/users/:id" do
    @user = User.find(params[:id])
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end
