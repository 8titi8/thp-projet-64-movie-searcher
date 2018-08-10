class MoviesController < ApplicationController

  def new_search
  end

  def search
    puts '========================='
    p params
    p @movie_results = SearchMovie.new(params[:search]).perform
    puts '========================='

  end

end
