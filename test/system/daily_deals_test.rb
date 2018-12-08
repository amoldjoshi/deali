require "application_system_test_case"

class DailyDealsTest < ApplicationSystemTestCase
  setup do
    @daily_deal = daily_deals(:one)
  end

  test "visiting the index" do
    visit daily_deals_url
    assert_selector "h1", text: "Daily Deals"
  end

  test "creating a Daily deal" do
    visit daily_deals_url
    click_on "New Daily Deal"

    fill_in "Dealercategory", with: @daily_deal.DealerCategory
    fill_in "Dealerid", with: @daily_deal.DealerID
    fill_in "Dealername", with: @daily_deal.DealerName
    fill_in "Dealertargeturl", with: @daily_deal.DealerTargetUrl
    fill_in "Isdealerfavorite?", with: @daily_deal.IsDealerFavorite?
    click_on "Create Daily deal"

    assert_text "Daily deal was successfully created"
    click_on "Back"
  end

  test "updating a Daily deal" do
    visit daily_deals_url
    click_on "Edit", match: :first

    fill_in "Dealercategory", with: @daily_deal.DealerCategory
    fill_in "Dealerid", with: @daily_deal.DealerID
    fill_in "Dealername", with: @daily_deal.DealerName
    fill_in "Dealertargeturl", with: @daily_deal.DealerTargetUrl
    fill_in "Isdealerfavorite?", with: @daily_deal.IsDealerFavorite?
    click_on "Update Daily deal"

    assert_text "Daily deal was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily deal" do
    visit daily_deals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily deal was successfully destroyed"
  end
end
