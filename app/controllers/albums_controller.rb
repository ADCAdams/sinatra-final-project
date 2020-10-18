class AlbumsController < ApplicationController

  # GET: /albums
  get "/albums" do
    @albums = Album.all
    erb :"albums/index.html"
  end
  get "/albums/" do
    redirect "/albums"
  end

  # GET: /albums/new
  get "/albums/new" do
    @album = Album.new

    erb :"albums/new.html"
  end

  # POST: /albums
  post "/albums" do
    @album = Album.create(:name => params[:name], :user_id => session[:user_id], :genre => params[:genre])

    #binding.pry
    redirect "/albums/#{ @album.id }"
  end

  # GET: /albums/5
  get "/albums/:id" do
    @album = Album.find(params[:id])
    erb :"/albums/show.html"
  end

  # GET: /albums/5/edit
  get "/albums/:id/edit" do
    erb :"/albums/edit.html"
  end

  # PATCH: /albums/5
  patch "/albums/:id" do
    redirect "/albums/:id"
  end

  # DELETE: /albums/5/delete
  delete "/albums/:id/delete" do
    Album.destroy(params[:id])
    redirect "/albums"
  end
end
