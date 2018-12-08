require 'test_helper'

class DailyDealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_deal = daily_deals(:one)
  end

  test "should get index" do
    get daily_deals_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_deal_url
    assert_response :success
  end

  test "should create daily_deal" do
    assert_difference('DailyDeal.count') do
      post daily_deals_url, params: { daily_deal: { DealerCategory: @daily_deal.DealerCategory, DealerID: @daily_deal.DealerID, DealerName: @daily_deal.DealerName, DealerTargetUrl: @daily_deal.DealerTargetUrl, IsDealerFavorite?: @daily_deal.IsDealerFavorite? } }
    end

    assert_redirected_to daily_deal_url(DailyDeal.last)
  end

  test "should show daily_deal" do
    get daily_deal_url(@daily_deal)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_deal_url(@daily_deal)
    assert_response :success
  end

  test "should update daily_deal" do
    patch daily_deal_url(@daily_deal), params: { daily_deal: { DealerCategory: @daily_deal.DealerCategory, DealerID: @daily_deal.DealerID, DealerName: @daily_deal.DealerName, DealerTargetUrl: @daily_deal.DealerTargetUrl, IsDealerFavorite?: @daily_deal.IsDealerFavorite? } }
    assert_redirected_to daily_deal_url(@daily_deal)
  end

  test "should destroy daily_deal" do
    assert_difference('DailyDeal.count', -1) do
      delete daily_deal_url(@daily_deal)
    end

    assert_redirected_to daily_deals_url
  end
end
