require 'test_helper'

class RondsControllerTest < ActionController::TestCase
  setup do
    @rond = ronds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ronds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rond" do
    assert_difference('Rond.count') do
      post :create, rond: { number: @rond.number }
    end

    assert_redirected_to rond_path(assigns(:rond))
  end

  test "should show rond" do
    get :show, id: @rond
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rond
    assert_response :success
  end

  test "should update rond" do
    put :update, id: @rond, rond: { number: @rond.number }
    assert_redirected_to rond_path(assigns(:rond))
  end

  test "should destroy rond" do
    assert_difference('Rond.count', -1) do
      delete :destroy, id: @rond
    end

    assert_redirected_to ronds_path
  end
end
