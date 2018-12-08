require 'test_helper'

class DealHuntersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deal_hunter = deal_hunters(:one)
  end

  test "should get index" do
    get deal_hunters_url
    assert_response :success
  end

  test "should get new" do
    get new_deal_hunter_url
    assert_response :success
  end

  test "should create deal_hunter" do
    assert_difference('DealHunter.count') do
      post deal_hunters_url, params: { deal_hunter: { HunterCategory: @deal_hunter.HunterCategory, HunterID: @deal_hunter.HunterID, HunterName: @deal_hunter.HunterName, HunterTargetUrl: @deal_hunter.HunterTargetUrl, IsHunterFavorite?: @deal_hunter.IsHunterFavorite? } }
    end

    assert_redirected_to deal_hunter_url(DealHunter.last)
  end

  test "should show deal_hunter" do
    get deal_hunter_url(@deal_hunter)
    assert_response :success
  end

  test "should get edit" do
    get edit_deal_hunter_url(@deal_hunter)
    assert_response :success
  end

  test "should update deal_hunter" do
    patch deal_hunter_url(@deal_hunter), params: { deal_hunter: { HunterCategory: @deal_hunter.HunterCategory, HunterID: @deal_hunter.HunterID, HunterName: @deal_hunter.HunterName, HunterTargetUrl: @deal_hunter.HunterTargetUrl, IsHunterFavorite?: @deal_hunter.IsHunterFavorite? } }
    assert_redirected_to deal_hunter_url(@deal_hunter)
  end

  test "should destroy deal_hunter" do
    assert_difference('DealHunter.count', -1) do
      delete deal_hunter_url(@deal_hunter)
    end

    assert_redirected_to deal_hunters_url
  end
end
