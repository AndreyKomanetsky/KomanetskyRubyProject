require "test_helper"

class PersonasincsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get personasincs_new_url
    assert_response :success
  end
end
