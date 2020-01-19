require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get listall" do
    get static_pages_contact_path
    assert_response :success
  end

end
