require 'test_helper'

class JoinFleaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get join" do
    get :join
    assert_response :success
  end

end
