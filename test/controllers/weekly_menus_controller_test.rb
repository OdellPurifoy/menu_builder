require 'test_helper'

class WeeklyMenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weekly_menu = weekly_menus(:one)
  end

  test "should get index" do
    get weekly_menus_url
    assert_response :success
  end

  test "should get new" do
    get new_weekly_menu_url
    assert_response :success
  end

  test "should create weekly_menu" do
    assert_difference('WeeklyMenu.count') do
      post weekly_menus_url, params: { weekly_menu: { start_date: @weekly_menu.start_date } }
    end

    assert_redirected_to weekly_menu_url(WeeklyMenu.last)
  end

  test "should show weekly_menu" do
    get weekly_menu_url(@weekly_menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_weekly_menu_url(@weekly_menu)
    assert_response :success
  end

  test "should update weekly_menu" do
    patch weekly_menu_url(@weekly_menu), params: { weekly_menu: { start_date: @weekly_menu.start_date } }
    assert_redirected_to weekly_menu_url(@weekly_menu)
  end

  test "should destroy weekly_menu" do
    assert_difference('WeeklyMenu.count', -1) do
      delete weekly_menu_url(@weekly_menu)
    end

    assert_redirected_to weekly_menus_url
  end
end
