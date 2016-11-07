class MoviesController < ApplicationController

  def index
    @list_of_movies= Movie.all
  end

  def detail
    @movie =Movie.find(params[:id])
  end

  def edit
    @movie =Movie.find(params[:id])
  end

  def update
    @movie =Movie.find(params[:id])
    @movie.title=params[:title]
    @movie.year=params[:year]
    @movie.duration=params[:duration]
    @movie.description =params[:description]
    @movie.image_url=params[:image_url]
    @movie.save
    redirect_to("/movie/#{params[:id]}")
  end

  def new
  end

  def create_movie
    @movie=Movie.new
    @movie.title=params[:title]
    @movie.year=params[:year]
    @movie.duration=params[:duration]
    @movie.description =params[:description]
    @movie.image_url=params[:image_url]
    @movie.save
    render("detail")
  end

  def destroy
    @movie=Movie.find(params[:id])
    render("destroy")
    @movie.destroy
  end
end
