require "test_helper"

class FeaturedskillControllerTest < ActionDispatch::IntegrationTest
  test "should get hey" do
    get featuredskill_hey_url
    assert_response :success
  end
end
