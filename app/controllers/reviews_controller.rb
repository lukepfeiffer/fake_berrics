class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to products_path
    else
      render product_path(@product)
    end
  end

  def review_params
    params.require(:review).permit(
      :text,
      :rating,
      :product_id,
      :user_id
    )
  end
end
