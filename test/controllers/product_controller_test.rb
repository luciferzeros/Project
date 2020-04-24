require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_index_url
    assert_response :success
  end

  test "should get createProduct_get" do
    get product_createProduct_get_url
    assert_response :success
  end

  test "should get createProduct_post" do
    get product_createProduct_post_url
    assert_response :success
  end

  test "should get updateProduct_get" do
    get product_updateProduct_get_url
    assert_response :success
  end

  test "should get updateProduct_post" do
    get product_updateProduct_post_url
    assert_response :success
  end

end
