require 'test_helper'

class WeeklyAddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weekly_add = weekly_adds(:one)
  end

  test "should get index" do
    get weekly_adds_url
    assert_response :success
  end

  test "should get new" do
    get new_weekly_add_url
    assert_response :success
  end

  test "should create weekly_add" do
    assert_difference('WeeklyAdd.count') do
      post weekly_adds_url, params: { weekly_add: { AddCategory: @weekly_add.AddCategory, AddID: @weekly_add.AddID, AddName: @weekly_add.AddName, AddTargetUrl: @weekly_add.AddTargetUrl, IsAddFavorite?: @weekly_add.IsAddFavorite? } }
    end

    assert_redirected_to weekly_add_url(WeeklyAdd.last)
  end

  test "should show weekly_add" do
    get weekly_add_url(@weekly_add)
    assert_response :success
  end

  test "should get edit" do
    get edit_weekly_add_url(@weekly_add)
    assert_response :success
  end

  test "should update weekly_add" do
    patch weekly_add_url(@weekly_add), params: { weekly_add: { AddCategory: @weekly_add.AddCategory, AddID: @weekly_add.AddID, AddName: @weekly_add.AddName, AddTargetUrl: @weekly_add.AddTargetUrl, IsAddFavorite?: @weekly_add.IsAddFavorite? } }
    assert_redirected_to weekly_add_url(@weekly_add)
  end

  test "should destroy weekly_add" do
    assert_difference('WeeklyAdd.count', -1) do
      delete weekly_add_url(@weekly_add)
    end

    assert_redirected_to weekly_adds_url
  end
end
