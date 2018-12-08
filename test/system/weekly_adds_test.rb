require "application_system_test_case"

class WeeklyAddsTest < ApplicationSystemTestCase
  setup do
    @weekly_add = weekly_adds(:one)
  end

  test "visiting the index" do
    visit weekly_adds_url
    assert_selector "h1", text: "Weekly Adds"
  end

  test "creating a Weekly add" do
    visit weekly_adds_url
    click_on "New Weekly Add"

    fill_in "Addcategory", with: @weekly_add.AddCategory
    fill_in "Addid", with: @weekly_add.AddID
    fill_in "Addname", with: @weekly_add.AddName
    fill_in "Addtargeturl", with: @weekly_add.AddTargetUrl
    fill_in "Isaddfavorite?", with: @weekly_add.IsAddFavorite?
    click_on "Create Weekly add"

    assert_text "Weekly add was successfully created"
    click_on "Back"
  end

  test "updating a Weekly add" do
    visit weekly_adds_url
    click_on "Edit", match: :first

    fill_in "Addcategory", with: @weekly_add.AddCategory
    fill_in "Addid", with: @weekly_add.AddID
    fill_in "Addname", with: @weekly_add.AddName
    fill_in "Addtargeturl", with: @weekly_add.AddTargetUrl
    fill_in "Isaddfavorite?", with: @weekly_add.IsAddFavorite?
    click_on "Update Weekly add"

    assert_text "Weekly add was successfully updated"
    click_on "Back"
  end

  test "destroying a Weekly add" do
    visit weekly_adds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weekly add was successfully destroyed"
  end
end
