class ReviewsController < ApplicationController

  def create
    review = Review.new
    review.user_id = session[:user_id]
    review.movie_id = params[:id]
    review.ratings = params[:rating]
    review.comment = params[:comment]
    review.save!
    redirect_to "/movies/#{review.movie_id}"
  end

end
