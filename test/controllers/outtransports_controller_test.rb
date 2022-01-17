require "test_helper"

class OuttransportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get outtransports_new_url
    assert_response :success
  end
end
