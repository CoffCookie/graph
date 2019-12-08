require "application_system_test_case"

class RainsTest < ApplicationSystemTestCase
  setup do
    @rain = rains(:one)
  end

  test "visiting the index" do
    visit rains_url
    assert_selector "h1", text: "Rains"
  end

  test "creating a Rain" do
    visit rains_url
    click_on "New Rain"

    fill_in "Month", with: @rain.month
    fill_in "Quantity", with: @rain.quantity
    click_on "Create Rain"

    assert_text "Rain was successfully created"
    click_on "Back"
  end

  test "updating a Rain" do
    visit rains_url
    click_on "Edit", match: :first

    fill_in "Month", with: @rain.month
    fill_in "Quantity", with: @rain.quantity
    click_on "Update Rain"

    assert_text "Rain was successfully updated"
    click_on "Back"
  end

  test "destroying a Rain" do
    visit rains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rain was successfully destroyed"
  end
end
