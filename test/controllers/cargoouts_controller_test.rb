require "test_helper"

class CargooutsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cargoouts_new_url
    assert_response :success
  end
end
