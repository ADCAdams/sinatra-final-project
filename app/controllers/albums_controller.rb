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
  get "/albums/:id/edit/" do
    @album = Album.find(params[:id])
    if @album.user_id == session[:user_id]
    else
      @error = "You can't view that!"
    end
    erb :"/albums/edit.html"

  end

  # PATCH: /albums/5
  patch "/albums/:id" do
    @album = Album.find(params[:id])
    if logged_in? && @album.user_id == session[:user_id]
      @album.update(:name => params[:name], :genre => params[:genre])
      redirect "/albums/#{@album.id}"
    end

  end

  # DELETE: /albums/5/delete
  delete "/albums/:id" do
    @album = Album.find(params[:id])
    if logged_in? && @album.user_id == session[:user_id]
      Album.destroy(params[:id])
      redirect "/albums"
    end
  end
end
