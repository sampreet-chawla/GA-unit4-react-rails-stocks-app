class AveragePricesController < ApplicationController
  # before_action :set_average_price, only: [:show, :update, :destroy]

  # GET /average_prices
  def index
    @average_prices = AveragePrice.all

    render json: @average_prices
  end

  # GET /average_prices/1
  # def show
  #   render json: @average_price
  # end

  # POST /average_prices
  def create
    @average_price = AveragePrice.new(average_price_params)
    @average_price.stock_id = params[:stock_id]

    if @average_price.save
      render json: @average_price, status: :created
    else
      render json: @average_price.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /average_prices/1
  # def update
  #   if @average_price.update(average_price_params)
  #     render json: @average_price
  #   else
  #     render json: @average_price.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /average_prices/1
  # def destroy
  #   @average_price.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_average_price
      @average_price = AveragePrice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def average_price_params
      params.require(:average_price).permit(:price, :price_date, :stock_id, :change_in_price)
    end
end
