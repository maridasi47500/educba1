require "test_helper"

class HeyControllerTest < ActionDispatch::IntegrationTest
  test "should get there" do
    get hey_there_url
    assert_response :success
  end
end
