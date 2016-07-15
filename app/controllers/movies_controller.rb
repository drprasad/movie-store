class MoviesController < ApplicationController
	def index
		@movies = Movie.all
		#render json: @movies
	end

	def show
		#render plain: params[:id]
		@movie = Movie.find(params[:id])
		#render json: @movie
	end
end