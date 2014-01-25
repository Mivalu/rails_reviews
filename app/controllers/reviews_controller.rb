class ReviewsController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = @restaurant.reviews.new(params.require(:review).permit(:description, :stars))
		if @review.save
			redirect_to restaurant_url(@restaurant)
		else
			flash[:error] = @review.errors.full_messages
			redirect_to restaurant_url(@restaurant)
		end
	end
end