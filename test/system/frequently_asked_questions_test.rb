require "application_system_test_case"

class FrequentlyAskedQuestionsTest < ApplicationSystemTestCase
  setup do
    @frequently_asked_question = frequently_asked_questions(:one)
  end

  test "visiting the index" do
    visit frequently_asked_questions_url
    assert_selector "h1", text: "Frequently Asked Questions"
  end

  test "creating a Frequently asked question" do
    visit frequently_asked_questions_url
    click_on "New Frequently Asked Question"

    fill_in "Answer", with: @frequently_asked_question.answer
    fill_in "Question", with: @frequently_asked_question.question
    click_on "Create Frequently asked question"

    assert_text "Frequently asked question was successfully created"
    click_on "Back"
  end

  test "updating a Frequently asked question" do
    visit frequently_asked_questions_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @frequently_asked_question.answer
    fill_in "Question", with: @frequently_asked_question.question
    click_on "Update Frequently asked question"

    assert_text "Frequently asked question was successfully updated"
    click_on "Back"
  end

  test "destroying a Frequently asked question" do
    visit frequently_asked_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frequently asked question was successfully destroyed"
  end
end
