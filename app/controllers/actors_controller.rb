class ActorsController < ApplicationController

  def index
    @actors=Actor.all
  end

  def detail
    @actor=Actor.find(params[:id])
  end

  def new
  end

  def create_actor
    @actor=Actor.new
    @actor.name=params[:name]
    @actor.bio=params[:bio]
    @actor.dob=params[:dob]
    @actor.image_url=params[:image_url]
    @actor.save
    render("detail")
  end

  def edit
    @actor=Actor.find(params[:id])
  end

  def update
    @actor=Actor.find(params[:id])
    @actor.name=params[:the_name]
    @actor.bio=params[:the_bio]
    @actor.dob=params[:the_dob]
    @actor.image_url=params[:image_url]
    @actor.save
    redirect_to("/actor/#{params[:id]}")
  end

  def destroy
    @actor=Actor.find(params[:id])
    render("destroy")
    @actor.destroy
  end

end
