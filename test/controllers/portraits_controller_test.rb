require 'test_helper'

class PortraitsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get portraits_create_url
    assert_response :success
  end

end
