require 'test_helper'

class MarketControllerTest < ActionController::TestCase
  test "should get add_flea_market" do
    get :add_flea_market
    assert_response :success
  end

  test "should get delete_flea_market" do
    get :delete_flea_market
    assert_response :success
  end

  test "should get update_flea_market" do
    get :update_flea_market
    assert_response :success
  end

  test "should get real_update_flea_market" do
    get :real_update_flea_market
    assert_response :success
  end

end
