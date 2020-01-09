require 'test_helper'

class DatiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daties_index_url
    assert_response :success
  end

end
