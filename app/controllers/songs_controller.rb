class SongsController < ApplicationController

  # GET: /songs
  get "/songs" do
    erb :"/songs/index.html"
  end

  # GET: /songs/new
  get "/songs/new" do
    erb :"/songs/new.html"
  end

  # POST: /songs
  post "/songs" do
    redirect "/songs"
  end

  # GET: /songs/5
  get "/songs/:id" do
    erb :"/songs/show.html"
  end

  # GET: /songs/5/edit
  get "/songs/:id/edit" do
    erb :"/songs/edit.html"
  end

  # PATCH: /songs/5
  patch "/songs/:id" do
    redirect "/songs/:id"
  end

  # DELETE: /songs/5/delete
  delete "/songs/:id/delete" do
    redirect "/songs"
  end
end
