require 'test_helper'

class CandidateprofilesControllerTest < ActionController::TestCase
  setup do
    @candidateprofile = candidateprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidateprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidateprofile" do
    assert_difference('Candidateprofile.count') do
      post :create, candidateprofile: { YOE: @candidateprofile.YOE, candidatecontact: @candidateprofile.candidatecontact, candidateemail: @candidateprofile.candidateemail, candidatename: @candidateprofile.candidatename, intervieweremail: @candidateprofile.intervieweremail, interviewername: @candidateprofile.interviewername, jobdescription: @candidateprofile.jobdescription, scheduledate: @candidateprofile.scheduledate, scheduletime: @candidateprofile.scheduletime, skills: @candidateprofile.skills }
    end

    assert_redirected_to candidateprofile_path(assigns(:candidateprofile))
  end

  test "should show candidateprofile" do
    get :show, id: @candidateprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidateprofile
    assert_response :success
  end

  test "should update candidateprofile" do
    patch :update, id: @candidateprofile, candidateprofile: { YOE: @candidateprofile.YOE, candidatecontact: @candidateprofile.candidatecontact, candidateemail: @candidateprofile.candidateemail, candidatename: @candidateprofile.candidatename, intervieweremail: @candidateprofile.intervieweremail, interviewername: @candidateprofile.interviewername, jobdescription: @candidateprofile.jobdescription, scheduledate: @candidateprofile.scheduledate, scheduletime: @candidateprofile.scheduletime, skills: @candidateprofile.skills }
    assert_redirected_to candidateprofile_path(assigns(:candidateprofile))
  end

  test "should destroy candidateprofile" do
    assert_difference('Candidateprofile.count', -1) do
      delete :destroy, id: @candidateprofile
    end

    assert_redirected_to candidateprofiles_path
  end
end
