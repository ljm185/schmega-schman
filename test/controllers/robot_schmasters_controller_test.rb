require 'test_helper'

class RobotSchmastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @robot_schmaster = robot_schmasters(:one)
  end

  test "should get index" do
    get robot_schmasters_url
    assert_response :success
  end

  test "should get new" do
    get new_robot_schmaster_url
    assert_response :success
  end

  test "should create robot_schmaster" do
    assert_difference('RobotSchmaster.count') do
      post robot_schmasters_url, params: { robot_schmaster: { game_id: @robot_schmaster.game_id, name: @robot_schmaster.name, serial_number: @robot_schmaster.serial_number, weakness: @robot_schmaster.weakness, weapon: @robot_schmaster.weapon } }
    end

    assert_redirected_to robot_schmaster_url(RobotSchmaster.last)
  end

  test "should show robot_schmaster" do
    get robot_schmaster_url(@robot_schmaster)
    assert_response :success
  end

  test "should get edit" do
    get edit_robot_schmaster_url(@robot_schmaster)
    assert_response :success
  end

  test "should update robot_schmaster" do
    patch robot_schmaster_url(@robot_schmaster), params: { robot_schmaster: { game_id: @robot_schmaster.game_id, name: @robot_schmaster.name, serial_number: @robot_schmaster.serial_number, weakness: @robot_schmaster.weakness, weapon: @robot_schmaster.weapon } }
    assert_redirected_to robot_schmaster_url(@robot_schmaster)
  end

  test "should destroy robot_schmaster" do
    assert_difference('RobotSchmaster.count', -1) do
      delete robot_schmaster_url(@robot_schmaster)
    end

    assert_redirected_to robot_schmasters_url
  end
end
