require "test_helper"

class InctransportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inctransports_new_url
    assert_response :success
  end
end
