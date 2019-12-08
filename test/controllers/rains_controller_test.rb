require 'test_helper'

class RainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rain = rains(:one)
  end

  test "should get index" do
    get rains_url
    assert_response :success
  end

  test "should get new" do
    get new_rain_url
    assert_response :success
  end

  test "should create rain" do
    assert_difference('Rain.count') do
      post rains_url, params: { rain: { month: @rain.month, quantity: @rain.quantity } }
    end

    assert_redirected_to rain_url(Rain.last)
  end

  test "should show rain" do
    get rain_url(@rain)
    assert_response :success
  end

  test "should get edit" do
    get edit_rain_url(@rain)
    assert_response :success
  end

  test "should update rain" do
    patch rain_url(@rain), params: { rain: { month: @rain.month, quantity: @rain.quantity } }
    assert_redirected_to rain_url(@rain)
  end

  test "should destroy rain" do
    assert_difference('Rain.count', -1) do
      delete rain_url(@rain)
    end

    assert_redirected_to rains_url
  end
end
