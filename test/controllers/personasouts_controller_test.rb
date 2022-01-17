require "test_helper"

class PersonasoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get personasouts_new_url
    assert_response :success
  end
end
