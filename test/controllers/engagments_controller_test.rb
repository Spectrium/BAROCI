require 'test_helper'

class EngagmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get engagments_index_url
    assert_response :success
  end

end
