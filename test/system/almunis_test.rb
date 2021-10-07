require "application_system_test_case"

class AlmunisTest < ApplicationSystemTestCase
  setup do
    @almuni = almunis(:one)
  end

  test "visiting the index" do
    visit almunis_url
    assert_selector "h1", text: "Almunis"
  end

  test "creating a Almuni" do
    visit almunis_url
    click_on "New Almuni"

    click_on "Create Almuni"

    assert_text "Almuni was successfully created"
    click_on "Back"
  end

  test "updating a Almuni" do
    visit almunis_url
    click_on "Edit", match: :first

    click_on "Update Almuni"

    assert_text "Almuni was successfully updated"
    click_on "Back"
  end

  test "destroying a Almuni" do
    visit almunis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Almuni was successfully destroyed"
  end
end
