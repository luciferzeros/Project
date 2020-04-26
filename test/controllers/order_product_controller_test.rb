require 'test_helper'

class OrderProductControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_product_index_url
    assert_response :success
  end

  test "should get create_get" do
    get order_product_create_get_url
    assert_response :success
  end

  test "should get create_post" do
    get order_product_create_post_url
    assert_response :success
  end

  test "should get update_get" do
    get order_product_update_get_url
    assert_response :success
  end

  test "should get update_post" do
    get order_product_update_post_url
    assert_response :success
  end

  test "should get delete" do
    get order_product_delete_url
    assert_response :success
  end

end
