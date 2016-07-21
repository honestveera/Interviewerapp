require 'test_helper'

class InterviewerfeedbacksControllerTest < ActionController::TestCase
  setup do
    @interviewerfeedback = interviewerfeedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interviewerfeedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interviewerfeedback" do
    assert_difference('Interviewerfeedback.count') do
      post :create, interviewerfeedback: { candidatename: @interviewerfeedback.candidatename, feedback: @interviewerfeedback.feedback, interviewername: @interviewerfeedback.interviewername, status: @interviewerfeedback.status }
    end

    assert_redirected_to interviewerfeedback_path(assigns(:interviewerfeedback))
  end

  test "should show interviewerfeedback" do
    get :show, id: @interviewerfeedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interviewerfeedback
    assert_response :success
  end

  test "should update interviewerfeedback" do
    patch :update, id: @interviewerfeedback, interviewerfeedback: { candidatename: @interviewerfeedback.candidatename, feedback: @interviewerfeedback.feedback, interviewername: @interviewerfeedback.interviewername, status: @interviewerfeedback.status }
    assert_redirected_to interviewerfeedback_path(assigns(:interviewerfeedback))
  end

  test "should destroy interviewerfeedback" do
    assert_difference('Interviewerfeedback.count', -1) do
      delete :destroy, id: @interviewerfeedback
    end

    assert_redirected_to interviewerfeedbacks_path
  end
end
