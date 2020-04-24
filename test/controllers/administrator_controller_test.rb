require 'test_helper'

class AdministratorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrator_index_url
    assert_response :success
  end

  test "should get create_get" do
    get administrator_create_get_url
    assert_response :success
  end

  test "should get create_post" do
    get administrator_create_post_url
    assert_response :success
  end

  test "should get update_get" do
    get administrator_update_get_url
    assert_response :success
  end

  test "should get update_post" do
    get administrator_update_post_url
    assert_response :success
  end

end
