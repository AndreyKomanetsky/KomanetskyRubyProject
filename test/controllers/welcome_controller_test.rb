require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get registration" do
    get welcome_registration_url
    assert_response :success
  end

  test "should get users" do
    get welcome_users_url
    assert_response :success
  end

  test "should get tranport" do
    get welcome_tranport_url
    assert_response :success
  end
end
