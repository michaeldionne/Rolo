require 'test_helper'

class DexesControllerTest < ActionController::TestCase
  setup do
    @dex = dexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dex" do
    assert_difference('Dex.count') do
      post :create, dex: { description: @dex.description }
    end

    assert_redirected_to dex_path(assigns(:dex))
  end

  test "should show dex" do
    get :show, id: @dex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dex
    assert_response :success
  end

  test "should update dex" do
    patch :update, id: @dex, dex: { description: @dex.description }
    assert_redirected_to dex_path(assigns(:dex))
  end

  test "should destroy dex" do
    assert_difference('Dex.count', -1) do
      delete :destroy, id: @dex
    end

    assert_redirected_to dexes_path
  end
end
