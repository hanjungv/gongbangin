require 'test_helper'

class FleasControllerTest < ActionController::TestCase
  setup do
    @flea = fleas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fleas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flea" do
    assert_difference('Flea.count') do
      post :create, flea: {  }
    end

    assert_redirected_to flea_path(assigns(:flea))
  end

  test "should show flea" do
    get :show, id: @flea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flea
    assert_response :success
  end

  test "should update flea" do
    patch :update, id: @flea, flea: {  }
    assert_redirected_to flea_path(assigns(:flea))
  end

  test "should destroy flea" do
    assert_difference('Flea.count', -1) do
      delete :destroy, id: @flea
    end

    assert_redirected_to fleas_path
  end
end
