require 'test_helper'

class DymmmiesControllerTest < ActionController::TestCase
  setup do
    @dymmmy = dymmmies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dymmmies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dymmmy" do
    assert_difference('Dymmmy.count') do
      post :create, dymmmy: @dymmmy.attributes
    end

    assert_redirected_to dymmmy_path(assigns(:dymmmy))
  end

  test "should show dymmmy" do
    get :show, id: @dymmmy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dymmmy.to_param
    assert_response :success
  end

  test "should update dymmmy" do
    put :update, id: @dymmmy.to_param, dymmmy: @dymmmy.attributes
    assert_redirected_to dymmmy_path(assigns(:dymmmy))
  end

  test "should destroy dymmmy" do
    assert_difference('Dymmmy.count', -1) do
      delete :destroy, id: @dymmmy.to_param
    end

    assert_redirected_to dymmmies_path
  end
end
