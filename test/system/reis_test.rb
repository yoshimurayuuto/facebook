require "application_system_test_case"

class ReisTest < ApplicationSystemTestCase
  setup do
    @rei = reis(:one)
  end

  test "visiting the index" do
    visit reis_url
    assert_selector "h1", text: "Reis"
  end

  test "creating a Rei" do
    visit reis_url
    click_on "New Rei"

    fill_in "Content", with: @rei.content
    click_on "Create Rei"

    assert_text "Rei was successfully created"
    click_on "Back"
  end

  test "updating a Rei" do
    visit reis_url
    click_on "Edit", match: :first

    fill_in "Content", with: @rei.content
    click_on "Update Rei"

    assert_text "Rei was successfully updated"
    click_on "Back"
  end

  test "destroying a Rei" do
    visit reis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rei was successfully destroyed"
  end
end
