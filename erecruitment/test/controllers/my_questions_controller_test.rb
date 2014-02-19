require 'test_helper'

class MyQuestionsControllerTest < ActionController::TestCase
  setup do
    @my_question = my_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_question" do
    assert_difference('MyQuestion.count') do
      post :create, my_question: { anwser: @my_question.anwser, created_by: @my_question.created_by, difficulty_level: @my_question.difficulty_level, option_a: @my_question.option_a, option_b: @my_question.option_b, option_c: @my_question.option_c, option_d: @my_question.option_d, question: @my_question.question, question_type: @my_question.question_type }
    end

    assert_redirected_to my_question_path(assigns(:my_question))
  end

  test "should show my_question" do
    get :show, id: @my_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_question
    assert_response :success
  end

  test "should update my_question" do
    patch :update, id: @my_question, my_question: { anwser: @my_question.anwser, created_by: @my_question.created_by, difficulty_level: @my_question.difficulty_level, option_a: @my_question.option_a, option_b: @my_question.option_b, option_c: @my_question.option_c, option_d: @my_question.option_d, question: @my_question.question, question_type: @my_question.question_type }
    assert_redirected_to my_question_path(assigns(:my_question))
  end

  test "should destroy my_question" do
    assert_difference('MyQuestion.count', -1) do
      delete :destroy, id: @my_question
    end

    assert_redirected_to my_questions_path
  end
end
