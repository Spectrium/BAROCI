require 'test_helper'

class ActualitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actualities_index_url
    assert_response :success
  end

  test "should get show" do
    get actualities_show_url
    assert_response :success
  end

  test "should get new" do
    get actualities_new_url
    assert_response :success
  end

  test "should get create" do
    get actualities_create_url
    assert_response :success
  end

  test "should get edit" do
    get actualities_edit_url
    assert_response :success
  end

  test "should get update" do
    get actualities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get actualities_destroy_url
    assert_response :success
  end

end
