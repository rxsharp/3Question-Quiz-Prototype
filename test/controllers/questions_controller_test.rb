require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { q1: @question.q1, q1a: @question.q1a, q1b: @question.q1b, q1c: @question.q1c, q1correct: @question.q1correct, q1d: @question.q1d, q2: @question.q2, q2a: @question.q2a, q2b: @question.q2b, q2c: @question.q2c, q2correct: @question.q2correct, q2d: @question.q2d, q3: @question.q3, q3a: @question.q3a, q3b: @question.q3b, q3c: @question.q3c, q3correct: @question.q3correct, q3d: @question.q3d }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { q1: @question.q1, q1a: @question.q1a, q1b: @question.q1b, q1c: @question.q1c, q1correct: @question.q1correct, q1d: @question.q1d, q2: @question.q2, q2a: @question.q2a, q2b: @question.q2b, q2c: @question.q2c, q2correct: @question.q2correct, q2d: @question.q2d, q3: @question.q3, q3a: @question.q3a, q3b: @question.q3b, q3c: @question.q3c, q3correct: @question.q3correct, q3d: @question.q3d }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
