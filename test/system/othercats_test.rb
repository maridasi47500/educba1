require "application_system_test_case"

class OthercatsTest < ApplicationSystemTestCase
  setup do
    @othercat = othercats(:one)
  end

  test "visiting the index" do
    visit othercats_url
    assert_selector "h1", text: "Othercats"
  end

  test "should create othercat" do
    visit othercats_url
    click_on "New othercat"

    fill_in "Description", with: @othercat.description
    fill_in "Name", with: @othercat.name
    click_on "Create Othercat"

    assert_text "Othercat was successfully created"
    click_on "Back"
  end

  test "should update Othercat" do
    visit othercat_url(@othercat)
    click_on "Edit this othercat", match: :first

    fill_in "Description", with: @othercat.description
    fill_in "Name", with: @othercat.name
    click_on "Update Othercat"

    assert_text "Othercat was successfully updated"
    click_on "Back"
  end

  test "should destroy Othercat" do
    visit othercat_url(@othercat)
    click_on "Destroy this othercat", match: :first

    assert_text "Othercat was successfully destroyed"
  end
end
