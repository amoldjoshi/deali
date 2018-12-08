require "application_system_test_case"

class DealHuntersTest < ApplicationSystemTestCase
  setup do
    @deal_hunter = deal_hunters(:one)
  end

  test "visiting the index" do
    visit deal_hunters_url
    assert_selector "h1", text: "Deal Hunters"
  end

  test "creating a Deal hunter" do
    visit deal_hunters_url
    click_on "New Deal Hunter"

    fill_in "Huntercategory", with: @deal_hunter.HunterCategory
    fill_in "Hunterid", with: @deal_hunter.HunterID
    fill_in "Huntername", with: @deal_hunter.HunterName
    fill_in "Huntertargeturl", with: @deal_hunter.HunterTargetUrl
    fill_in "Ishunterfavorite?", with: @deal_hunter.IsHunterFavorite?
    click_on "Create Deal hunter"

    assert_text "Deal hunter was successfully created"
    click_on "Back"
  end

  test "updating a Deal hunter" do
    visit deal_hunters_url
    click_on "Edit", match: :first

    fill_in "Huntercategory", with: @deal_hunter.HunterCategory
    fill_in "Hunterid", with: @deal_hunter.HunterID
    fill_in "Huntername", with: @deal_hunter.HunterName
    fill_in "Huntertargeturl", with: @deal_hunter.HunterTargetUrl
    fill_in "Ishunterfavorite?", with: @deal_hunter.IsHunterFavorite?
    click_on "Update Deal hunter"

    assert_text "Deal hunter was successfully updated"
    click_on "Back"
  end

  test "destroying a Deal hunter" do
    visit deal_hunters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deal hunter was successfully destroyed"
  end
end
