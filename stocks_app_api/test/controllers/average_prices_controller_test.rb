require 'test_helper'

class AveragePricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @average_price = average_prices(:one)
  end

  test "should get index" do
    get average_prices_url, as: :json
    assert_response :success
  end

  test "should create average_price" do
    assert_difference('AveragePrice.count') do
      post average_prices_url, params: { average_price: { price: @average_price.price, price_date: @average_price.price_date, stock_id: @average_price.stock_id } }, as: :json
    end

    assert_response 201
  end

  test "should show average_price" do
    get average_price_url(@average_price), as: :json
    assert_response :success
  end

  test "should update average_price" do
    patch average_price_url(@average_price), params: { average_price: { price: @average_price.price, price_date: @average_price.price_date, stock_id: @average_price.stock_id } }, as: :json
    assert_response 200
  end

  test "should destroy average_price" do
    assert_difference('AveragePrice.count', -1) do
      delete average_price_url(@average_price), as: :json
    end

    assert_response 204
  end
end
