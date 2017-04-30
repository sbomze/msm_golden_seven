class MoviesController < ApplicationController

def index
  @movies = Movie.all
  render("/movies/index.html.erb")
end
