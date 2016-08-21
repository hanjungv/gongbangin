require 'test_helper'

class JudgeFleasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get judge" do
    get :judge
    assert_response :success
  end

end
