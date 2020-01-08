require 'test_helper'

class ActuphotosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get actuphotos_create_url
    assert_response :success
  end

end
