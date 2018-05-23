require 'test_helper'

class AccountSupportControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get account_support_new_url
    assert_response :success
  end

  test "should get create" do
    get account_support_create_url
    assert_response :success
  end

end
