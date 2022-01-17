require "test_helper"

class TransportInControllerTest < ActionDispatch::IntegrationTest
  test "should get showlist" do
    get transport_in_showlist_url
    assert_response :success
  end
end
