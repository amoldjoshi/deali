require "application_system_test_case"

class InnovationsTest < ApplicationSystemTestCase
  setup do
    @innovation = innovations(:one)
  end

  test "visiting the index" do
    visit innovations_url
    assert_selector "h1", text: "Innovations"
  end

  test "creating a Innovation" do
    visit innovations_url
    click_on "New Innovation"

    fill_in "Innovationcategory", with: @innovation.InnovationCategory
    fill_in "Innovationid", with: @innovation.InnovationID
    fill_in "Innovationname", with: @innovation.InnovationName
    fill_in "Innovationtargeturl", with: @innovation.InnovationTargetUrl
    fill_in "Isinnovationfavorite?", with: @innovation.IsInnovationFavorite?
    click_on "Create Innovation"

    assert_text "Innovation was successfully created"
    click_on "Back"
  end

  test "updating a Innovation" do
    visit innovations_url
    click_on "Edit", match: :first

    fill_in "Innovationcategory", with: @innovation.InnovationCategory
    fill_in "Innovationid", with: @innovation.InnovationID
    fill_in "Innovationname", with: @innovation.InnovationName
    fill_in "Innovationtargeturl", with: @innovation.InnovationTargetUrl
    fill_in "Isinnovationfavorite?", with: @innovation.IsInnovationFavorite?
    click_on "Update Innovation"

    assert_text "Innovation was successfully updated"
    click_on "Back"
  end

  test "destroying a Innovation" do
    visit innovations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Innovation was successfully destroyed"
  end
end
