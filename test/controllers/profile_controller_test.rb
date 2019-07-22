require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get profile_page" do
    get profile_profile_page_url
    assert_response :success
  end

end
