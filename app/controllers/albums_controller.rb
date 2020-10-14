class AlbumsController < ApplicationController

  # GET: /albums
  get "/albums" do
    erb :"/albums/index.html"
  end

  # GET: /albums/new
  get "/albums/new" do
    erb :"/albums/new.html"
  end

  # POST: /albums
  post "/albums" do
    redirect "/albums"
  end

  # GET: /albums/5
  get "/albums/:id" do
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
    redirect "/albums"
  end
end
