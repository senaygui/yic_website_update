require 'test_helper'

class FrequentlyAskedQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frequently_asked_question = frequently_asked_questions(:one)
  end

  test "should get index" do
    get frequently_asked_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_frequently_asked_question_url
    assert_response :success
  end

  test "should create frequently_asked_question" do
    assert_difference('FrequentlyAskedQuestion.count') do
      post frequently_asked_questions_url, params: { frequently_asked_question: { answer: @frequently_asked_question.answer, question: @frequently_asked_question.question } }
    end

    assert_redirected_to frequently_asked_question_url(FrequentlyAskedQuestion.last)
  end

  test "should show frequently_asked_question" do
    get frequently_asked_question_url(@frequently_asked_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_frequently_asked_question_url(@frequently_asked_question)
    assert_response :success
  end

  test "should update frequently_asked_question" do
    patch frequently_asked_question_url(@frequently_asked_question), params: { frequently_asked_question: { answer: @frequently_asked_question.answer, question: @frequently_asked_question.question } }
    assert_redirected_to frequently_asked_question_url(@frequently_asked_question)
  end

  test "should destroy frequently_asked_question" do
    assert_difference('FrequentlyAskedQuestion.count', -1) do
      delete frequently_asked_question_url(@frequently_asked_question)
    end

    assert_redirected_to frequently_asked_questions_url
  end
end
