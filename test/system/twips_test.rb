require "application_system_test_case"

class TwipsTest < ApplicationSystemTestCase
  setup do
    @twip = twips(:one)
  end

  test "visiting the index" do
    visit twips_url
    assert_selector "h1", text: "Twips"
  end

  test "should create twip" do
    visit twips_url
    click_on "New twip"

    fill_in "Twip", with: @twip.twip
    click_on "Create Twip"

    assert_text "Twip was successfully created"
    click_on "Back"
  end

  test "should update Twip" do
    visit twip_url(@twip)
    click_on "Edit this twip", match: :first

    fill_in "Twip", with: @twip.twip
    click_on "Update Twip"

    assert_text "Twip was successfully updated"
    click_on "Back"
  end

  test "should destroy Twip" do
    visit twip_url(@twip)
    click_on "Destroy this twip", match: :first

    assert_text "Twip was successfully destroyed"
  end
end
