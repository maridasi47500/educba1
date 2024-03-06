require "test_helper"

class OthercatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @othercat = othercats(:one)
  end

  test "should get index" do
    get othercats_url
    assert_response :success
  end

  test "should get new" do
    get new_othercat_url
    assert_response :success
  end

  test "should create othercat" do
    assert_difference("Othercat.count") do
      post othercats_url, params: { othercat: { description: @othercat.description, name: @othercat.name } }
    end

    assert_redirected_to othercat_url(Othercat.last)
  end

  test "should show othercat" do
    get othercat_url(@othercat)
    assert_response :success
  end

  test "should get edit" do
    get edit_othercat_url(@othercat)
    assert_response :success
  end

  test "should update othercat" do
    patch othercat_url(@othercat), params: { othercat: { description: @othercat.description, name: @othercat.name } }
    assert_redirected_to othercat_url(@othercat)
  end

  test "should destroy othercat" do
    assert_difference("Othercat.count", -1) do
      delete othercat_url(@othercat)
    end

    assert_redirected_to othercats_url
  end
end
