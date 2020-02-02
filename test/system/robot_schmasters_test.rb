require "application_system_test_case"

class RobotSchmastersTest < ApplicationSystemTestCase
  setup do
    @robot_schmaster = robot_schmasters(:one)
  end

  test "visiting the index" do
    visit robot_schmasters_url
    assert_selector "h1", text: "Robot Schmasters"
  end

  test "creating a Robot schmaster" do
    visit robot_schmasters_url
    click_on "New Robot Schmaster"

    fill_in "Game", with: @robot_schmaster.game_id
    fill_in "Name", with: @robot_schmaster.name
    fill_in "Serial number", with: @robot_schmaster.serial_number
    fill_in "Weakness", with: @robot_schmaster.weakness
    fill_in "Weapon", with: @robot_schmaster.weapon
    click_on "Create Robot schmaster"

    assert_text "Robot schmaster was successfully created"
    click_on "Back"
  end

  test "updating a Robot schmaster" do
    visit robot_schmasters_url
    click_on "Edit", match: :first

    fill_in "Game", with: @robot_schmaster.game_id
    fill_in "Name", with: @robot_schmaster.name
    fill_in "Serial number", with: @robot_schmaster.serial_number
    fill_in "Weakness", with: @robot_schmaster.weakness
    fill_in "Weapon", with: @robot_schmaster.weapon
    click_on "Update Robot schmaster"

    assert_text "Robot schmaster was successfully updated"
    click_on "Back"
  end

  test "destroying a Robot schmaster" do
    visit robot_schmasters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Robot schmaster was successfully destroyed"
  end
end
