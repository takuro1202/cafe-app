class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
  end

  def show
    @review = Review.find(params[:id])
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    review = Review.find(params[:id])
    review.update(review_params)
  end


  private
  def review_params
    params.require(:review).permit(:cafename,:address,:image,:text,:evaluation1,:evaluation2,:evaluation3,:evaluation4,:evaluation5,:existence1,:existence2,:existence3).merge(user_id: current_user.id)
  end
end
