require 'test_helper'

class MastermenuControllerTest < ActionController::TestCase
  test "should get level_up" do
    get :level_up
    assert_response :success
  end

  test "should get level_down" do
    get :level_down
    assert_response :success
  end

  test "should get destroyuser" do
    get :destroyuser
    assert_response :success
  end

end
