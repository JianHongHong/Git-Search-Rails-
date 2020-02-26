require "application_system_test_case"

class SearchreposTest < ApplicationSystemTestCase
  setup do
    @searchrepo = searchrepos(:one)
  end

  test "visiting the index" do
    visit searchrepos_url
    assert_selector "h1", text: "Searchrepos"
  end

  test "creating a Searchrepo" do
    visit searchrepos_url
    click_on "New Searchrepo"

    fill_in "Body", with: @searchrepo.body
    fill_in "Date", with: @searchrepo.date
    fill_in "Title", with: @searchrepo.title
    click_on "Create Searchrepo"

    assert_text "Searchrepo was successfully created"
    click_on "Back"
  end

  test "updating a Searchrepo" do
    visit searchrepos_url
    click_on "Edit", match: :first

    fill_in "Body", with: @searchrepo.body
    fill_in "Date", with: @searchrepo.date
    fill_in "Title", with: @searchrepo.title
    click_on "Update Searchrepo"

    assert_text "Searchrepo was successfully updated"
    click_on "Back"
  end

  test "destroying a Searchrepo" do
    visit searchrepos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Searchrepo was successfully destroyed"
  end
end
