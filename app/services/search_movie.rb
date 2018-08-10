require 'rubygems'
require 'themoviedb-api'

class SearchMovie

  def initialize(search)
    @search = search
    @results = []
    @movie_result = {}
  end

  def search_movie
    @movies = Tmdb::Search.new
    @movies.resource('movie')
    @movies.query("#{@search}")
    @movies.each do |movie|
      @movie_result[:title] = movie.title
      @movie_result[:director] = Tmdb::Movie.director(movie.id)
      @movie_result[:poster] = Tmdb::Movie.posters(movie.id)
      @movie_result[:release] = Tmdb::Movie.releases(movie.id)
      @results << @movie_result
    end
  end

  def perform
    search_movie
  end

end
