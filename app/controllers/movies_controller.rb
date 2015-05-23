class MoviesController < ApplicationController
	before_action :get_movie,only: [:show]
	def index
		@movies = Movie.all
	end
	def show
		
	end
	private
	def get_movie
		@movie = Movie.find(params[:id])
	end
end
