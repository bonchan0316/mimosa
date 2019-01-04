require 'test_helper'

class FamilyUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get family_users_new_url
    assert_response :success
  end

end
