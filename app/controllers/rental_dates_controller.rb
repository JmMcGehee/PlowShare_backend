class RentalDatesController < ApplicationController
  before_action :set_rental_date, only: [:show, :update, :destroy]

  # GET /rental_dates
  def index
    @rental_dates = RentalDate.all

    render json: @rental_dates
  end

  # GET /rental_dates/1
  def show
    render json: @rental_date
  end

  # POST /rental_dates
  def create
    @rental_date = RentalDate.new(rental_date_params)

    if @rental_date.save
      render json: @rental_date, status: :created, location: @rental_date
    else
      render json: @rental_date.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rental_dates/1
  def update
    if @rental_date.update(rental_date_params)
      render json: @rental_date
    else
      render json: @rental_date.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rental_dates/1
  def destroy
    @rental_date.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_date
      @rental_date = RentalDate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rental_date_params
      params.require(:rental_date).permit(:rental_id, :day)
    end
end
