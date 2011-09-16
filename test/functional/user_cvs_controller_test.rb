require 'test_helper'

class UserCvsControllerTest < ActionController::TestCase
  setup do
    @user_cv = user_cvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_cvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_cv" do
    assert_difference('UserCv.count') do
      post :create, :user_cv => @user_cv.attributes
    end

    assert_redirected_to user_cv_path(assigns(:user_cv))
  end

  test "should show user_cv" do
    get :show, :id => @user_cv.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_cv.to_param
    assert_response :success
  end

  test "should update user_cv" do
    put :update, :id => @user_cv.to_param, :user_cv => @user_cv.attributes
    assert_redirected_to user_cv_path(assigns(:user_cv))
  end

  test "should destroy user_cv" do
    assert_difference('UserCv.count', -1) do
      delete :destroy, :id => @user_cv.to_param
    end

    assert_redirected_to user_cvs_path
  end
end
