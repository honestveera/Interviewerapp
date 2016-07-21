require 'test_helper'

class ScheduletimesControllerTest < ActionController::TestCase
  setup do
    @scheduletime = scheduletimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scheduletimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scheduletime" do
    assert_difference('Scheduletime.count') do
      post :create, scheduletime: { scheduletime: @scheduletime.scheduletime }
    end

    assert_redirected_to scheduletime_path(assigns(:scheduletime))
  end

  test "should show scheduletime" do
    get :show, id: @scheduletime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scheduletime
    assert_response :success
  end

  test "should update scheduletime" do
    patch :update, id: @scheduletime, scheduletime: { scheduletime: @scheduletime.scheduletime }
    assert_redirected_to scheduletime_path(assigns(:scheduletime))
  end

  test "should destroy scheduletime" do
    assert_difference('Scheduletime.count', -1) do
      delete :destroy, id: @scheduletime
    end

    assert_redirected_to scheduletimes_path
  end
end
