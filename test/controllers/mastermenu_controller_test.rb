require 'test_helper'

class MastermenuControllerTest < ActionController::TestCase
  test "should get levelup" do
    get :levelup
    assert_response :success
  end

  test "should get leveldown" do
    get :leveldown
    assert_response :success
  end

  test "should get destroyuser" do
    get :destroyuser
    assert_response :success
  end

end
