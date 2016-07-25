require 'test_helper'

class CandidatedetailsControllerTest < ActionController::TestCase
  setup do
    @candidatedetail = candidatedetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatedetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidatedetail" do
    assert_difference('Candidatedetail.count') do
      post :create, candidatedetail: { candidatecontact: @candidatedetail.candidatecontact, candidateemail: @candidatedetail.candidateemail, candidatename: @candidatedetail.candidatename, jobdescription: @candidatedetail.jobdescription, skills: @candidatedetail.skills, yoe: @candidatedetail.yoe }
    end

    assert_redirected_to candidatedetail_path(assigns(:candidatedetail))
  end

  test "should show candidatedetail" do
    get :show, id: @candidatedetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidatedetail
    assert_response :success
  end

  test "should update candidatedetail" do
    patch :update, id: @candidatedetail, candidatedetail: { candidatecontact: @candidatedetail.candidatecontact, candidateemail: @candidatedetail.candidateemail, candidatename: @candidatedetail.candidatename, jobdescription: @candidatedetail.jobdescription, skills: @candidatedetail.skills, yoe: @candidatedetail.yoe }
    assert_redirected_to candidatedetail_path(assigns(:candidatedetail))
  end

  test "should destroy candidatedetail" do
    assert_difference('Candidatedetail.count', -1) do
      delete :destroy, id: @candidatedetail
    end

    assert_redirected_to candidatedetails_path
  end
end
