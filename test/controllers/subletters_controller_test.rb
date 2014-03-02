require 'test_helper'

class SublettersControllerTest < ActionController::TestCase
  setup do
    @subletter = subletters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subletters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subletter" do
    assert_difference('Subletter.count') do
      post :create, subletter: { user_id: @subletter.user_id }
    end

    assert_redirected_to subletter_path(assigns(:subletter))
  end

  test "should show subletter" do
    get :show, id: @subletter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subletter
    assert_response :success
  end

  test "should update subletter" do
    patch :update, id: @subletter, subletter: { user_id: @subletter.user_id }
    assert_redirected_to subletter_path(assigns(:subletter))
  end

  test "should destroy subletter" do
    assert_difference('Subletter.count', -1) do
      delete :destroy, id: @subletter
    end

    assert_redirected_to subletters_path
  end
end
