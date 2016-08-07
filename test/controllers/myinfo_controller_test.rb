require 'test_helper'

class MyinfoControllerTest < ActionController::TestCase
  test "should get showinfo" do
    get :showinfo
    assert_response :success
  end

end
