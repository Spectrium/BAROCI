require 'test_helper'

class SearchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get searchs_index_url
    assert_response :success
  end

  test "should get create" do
    get searchs_create_url
    assert_response :success
  end

end
