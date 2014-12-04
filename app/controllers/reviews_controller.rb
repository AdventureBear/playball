class ReviewsController < ApplicationController
	before_action :set_stadium

def index
	#@stadium  = Stadium.find(params[:stadium_id])
	@reviews = @stadium.reviews
end

def new
	#@stadium  = Stadium.find(params[:stadium_id])
	@review = @stadium.reviews.new 
end

def create
	
	#@stadium  = Stadium.find(params[:stadium_id])
	@review = @stadium.reviews.new(review_params)
	if @review.save
		redirect_to stadium_reviews_path(@stadium), 
		notice: "Thanks for your review!"
	else
		render :new
	end

end

private
	def review_params
			review_params = params.require(:review).permit(:name, :stars, :comment)
	end


def set_stadium
  @stadium = Stadium.find(params[:stadium_id])
end


end
