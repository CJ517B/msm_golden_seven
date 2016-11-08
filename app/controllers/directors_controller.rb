class DirectorsController < ApplicationController

def index
  @directors=Director.all
end

def detail
  @director=Director.find(params[:id])
end

def new
end

def create_director
  @director=Director.new
  @director.dob=params[:dob]
  @director.name=params[:name]
  @director.bio=params[:bio]
  @director.image_url=params[:image_url]
  @director.save
  render("detail")
end

def edit
  @director=Director.find(params[:id])
end

def update
  @director=Director.find(params[:id])
  @director.dob=params[:the_dob]
  @director.name=params[:the_name]
  @director.bio=params[:the_bio]
  @director.image_url=params[:image_url]
  @director.save
  redirect_to("/director/#{params[:id]}")
end

def destroy
    @director=Director.find(params[:id])
    render("destroy")
    @director.destroy
end

end
