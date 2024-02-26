class ReviewsController < ApplicationController
    def new
      @capsule = Capsule.find(params[:capsule_id])
      @review = @capsule.reviews.build
    end
  
    def create
      @capsule = Capsule.find(params[:capsule_id])
      @review = @capsule.reviews.build(review_params)
  
      if @review.save
        redirect_to @capsule, notice: 'Review added successfully.'
      else
        render :new
      end
    end
  
    private
  
    def review_params
      params.require(:review).permit(:name, :stars, :comment)
    end
  end