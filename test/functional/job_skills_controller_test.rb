require 'test_helper'

class JobSkillsControllerTest < ActionController::TestCase
  setup do
    @job_skill = job_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_skill" do
    assert_difference('JobSkill.count') do
      post :create, :job_skill => @job_skill.attributes
    end

    assert_redirected_to job_skill_path(assigns(:job_skill))
  end

  test "should show job_skill" do
    get :show, :id => @job_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @job_skill.to_param
    assert_response :success
  end

  test "should update job_skill" do
    put :update, :id => @job_skill.to_param, :job_skill => @job_skill.attributes
    assert_redirected_to job_skill_path(assigns(:job_skill))
  end

  test "should destroy job_skill" do
    assert_difference('JobSkill.count', -1) do
      delete :destroy, :id => @job_skill.to_param
    end

    assert_redirected_to job_skills_path
  end
end
