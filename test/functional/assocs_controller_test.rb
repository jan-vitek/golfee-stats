require 'test_helper'

class AssocsControllerTest < ActionController::TestCase
  setup do
    @assoc = assocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assoc" do
    assert_difference('Assoc.count') do
      post :create, assoc: { golfer_id: @assoc.golfer_id, player_id: @assoc.player_id, tip_id: @assoc.tip_id }
    end

    assert_redirected_to assoc_path(assigns(:assoc))
  end

  test "should show assoc" do
    get :show, id: @assoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assoc
    assert_response :success
  end

  test "should update assoc" do
    put :update, id: @assoc, assoc: { golfer_id: @assoc.golfer_id, player_id: @assoc.player_id, tip_id: @assoc.tip_id }
    assert_redirected_to assoc_path(assigns(:assoc))
  end

  test "should destroy assoc" do
    assert_difference('Assoc.count', -1) do
      delete :destroy, id: @assoc
    end

    assert_redirected_to assocs_path
  end
end
