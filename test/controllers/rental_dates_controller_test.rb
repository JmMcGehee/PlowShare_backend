require 'test_helper'

class RentalDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_date = rental_dates(:one)
  end

  test "should get index" do
    get rental_dates_url, as: :json
    assert_response :success
  end

  test "should create rental_date" do
    assert_difference('RentalDate.count') do
      post rental_dates_url, params: { rental_date: { day: @rental_date.day, rental_id: @rental_date.rental_id } }, as: :json
    end

    assert_response 201
  end

  test "should show rental_date" do
    get rental_date_url(@rental_date), as: :json
    assert_response :success
  end

  test "should update rental_date" do
    patch rental_date_url(@rental_date), params: { rental_date: { day: @rental_date.day, rental_id: @rental_date.rental_id } }, as: :json
    assert_response 200
  end

  test "should destroy rental_date" do
    assert_difference('RentalDate.count', -1) do
      delete rental_date_url(@rental_date), as: :json
    end

    assert_response 204
  end
end
