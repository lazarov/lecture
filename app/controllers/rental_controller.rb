class RentalController < ApplicationController
  def index
    @movies = Movie.page(@page).order(:updated_at => :desc)
  end

  def show
    @movie = Movie.find( params['id'])
  end
end
