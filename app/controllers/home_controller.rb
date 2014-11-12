class HomeController < ApplicationController
	def home 
		@tweets = Tweet.all
		render 'index'
	end

	def create
		rand_bird = 1 + rand(4)
		Tweet.create(body: params[:body], bird: rand_bird)
		redirect_to '/'
	end

	def show
		@tweet = Tweet.find(params[:id])
		render 'edit'
	end

	def update
		if params[:delete_button]
			Tweet.find(params[:id]).destroy
			redirect_to '/'
		else
			Tweet.find(params[:id]).update(body: params[:body])
			redirect_to '/'
		end
	end

end
