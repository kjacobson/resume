require 'test_helper'

class JobYearsControllerTest < ActionController::TestCase
  setup do
    @job_year = job_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_year" do
    assert_difference('JobYear.count') do
      post :create, :job_year => @job_year.attributes
    end

    assert_redirected_to job_year_path(assigns(:job_year))
  end

  test "should show job_year" do
    get :show, :id => @job_year.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @job_year.to_param
    assert_response :success
  end

  test "should update job_year" do
    put :update, :id => @job_year.to_param, :job_year => @job_year.attributes
    assert_redirected_to job_year_path(assigns(:job_year))
  end

  test "should destroy job_year" do
    assert_difference('JobYear.count', -1) do
      delete :destroy, :id => @job_year.to_param
    end

    assert_redirected_to job_years_path
  end
end
