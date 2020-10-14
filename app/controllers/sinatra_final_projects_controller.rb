class SinatraFinalProjectsController < ApplicationController

  # GET: /sinatra_final_projects
  get "/sinatra_final_projects" do
    erb :"/sinatra_final_projects/index.html"
  end

  # GET: /sinatra_final_projects/new
  get "/sinatra_final_projects/new" do
    erb :"/sinatra_final_projects/new.html"
  end

  # POST: /sinatra_final_projects
  post "/sinatra_final_projects" do
    redirect "/sinatra_final_projects"
  end

  # GET: /sinatra_final_projects/5
  get "/sinatra_final_projects/:id" do
    erb :"/sinatra_final_projects/show.html"
  end

  # GET: /sinatra_final_projects/5/edit
  get "/sinatra_final_projects/:id/edit" do
    erb :"/sinatra_final_projects/edit.html"
  end

  # PATCH: /sinatra_final_projects/5
  patch "/sinatra_final_projects/:id" do
    redirect "/sinatra_final_projects/:id"
  end

  # DELETE: /sinatra_final_projects/5/delete
  delete "/sinatra_final_projects/:id/delete" do
    redirect "/sinatra_final_projects"
  end
end
