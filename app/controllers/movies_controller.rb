class MoviesController < ApplicationController

  def index
    @list_of_movies= Movie.all
  end

end
