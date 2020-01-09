require 'test_helper'

class PromessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get promesses_index_url
    assert_response :success
  end

end
