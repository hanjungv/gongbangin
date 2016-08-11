require 'test_helper'

class ItemControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get real_update" do
    get :real_update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
