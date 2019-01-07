require "application_system_test_case"

class WeeklyMenusTest < ApplicationSystemTestCase
  setup do
    @weekly_menu = weekly_menus(:one)
  end

  test "visiting the index" do
    visit weekly_menus_url
    assert_selector "h1", text: "Weekly Menus"
  end

  test "creating a Weekly menu" do
    visit weekly_menus_url
    click_on "New Weekly Menu"

    fill_in "Start date", with: @weekly_menu.start_date
    click_on "Create Weekly menu"

    assert_text "Weekly menu was successfully created"
    click_on "Back"
  end

  test "updating a Weekly menu" do
    visit weekly_menus_url
    click_on "Edit", match: :first

    fill_in "Start date", with: @weekly_menu.start_date
    click_on "Update Weekly menu"

    assert_text "Weekly menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Weekly menu" do
    visit weekly_menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weekly menu was successfully destroyed"
  end
end
