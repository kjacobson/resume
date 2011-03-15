require 'test_helper'

class JobSoftwaresControllerTest < ActionController::TestCase
  setup do
    @job_software = job_softwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_softwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_software" do
    assert_difference('JobSoftware.count') do
      post :create, :job_software => @job_software.attributes
    end

    assert_redirected_to job_software_path(assigns(:job_software))
  end

  test "should show job_software" do
    get :show, :id => @job_software.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @job_software.to_param
    assert_response :success
  end

  test "should update job_software" do
    put :update, :id => @job_software.to_param, :job_software => @job_software.attributes
    assert_redirected_to job_software_path(assigns(:job_software))
  end

  test "should destroy job_software" do
    assert_difference('JobSoftware.count', -1) do
      delete :destroy, :id => @job_software.to_param
    end

    assert_redirected_to job_softwares_path
  end
end
