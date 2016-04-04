require 'test_helper'

class DerpsControllerTest < ActionController::TestCase
  setup do
    @derp = derps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:derps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create derp" do
    assert_difference('Derp.count') do
      post :create, derp: { derp: @derp.derp, title: @derp.title }
    end

    assert_redirected_to derp_path(assigns(:derp))
  end

  test "should show derp" do
    get :show, id: @derp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @derp
    assert_response :success
  end

  test "should update derp" do
    patch :update, id: @derp, derp: { derp: @derp.derp, title: @derp.title }
    assert_redirected_to derp_path(assigns(:derp))
  end

  test "should destroy derp" do
    assert_difference('Derp.count', -1) do
      delete :destroy, id: @derp
    end

    assert_redirected_to derps_path
  end
end
