require 'test_helper'

class CreaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creatures_index_url
    assert_response :success
  end

  test "should get show" do
    get creatures_show_url
    assert_response :success
  end

  test "should get new" do
    get creatures_new_url
    assert_response :success
  end

  test "should get create" do
    get creatures_create_url
    assert_response :success
  end

  test "should get edit" do
    get creatures_edit_url
    assert_response :success
  end

  test "should get update" do
    get creatures_update_url
    assert_response :success
  end

  test "should get destroy" do
    get creatures_destroy_url
    assert_response :success
  end

end
