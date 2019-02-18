class ReviewsController < ApplicationController
  before_action :set_booking

  def new
    @creature = @booking.creature
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    authorize @review

    if @review.save
      @booking.review_id = @review.id
      @booking.save
      redirect_to creature_path(@booking.creature)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:description, :rating, :booking_id)
  end
end
