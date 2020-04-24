require 'test_helper'

class CustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_index_url
    assert_response :success
  end

  test "should get createCustomer_get" do
    get customer_createCustomer_get_url
    assert_response :success
  end

  test "should get createCustomer_post" do
    get customer_createCustomer_post_url
    assert_response :success
  end

  test "should get updateCustomer_get" do
    get customer_updateCustomer_get_url
    assert_response :success
  end

  test "should get updateCustomer_post" do
    get customer_updateCustomer_post_url
    assert_response :success
  end

  test "should get removeCustomer" do
    get customer_removeCustomer_url
    assert_response :success
  end

end
