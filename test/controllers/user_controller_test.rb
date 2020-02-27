require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get scaffold" do
    get user_scaffold_url
    assert_response :success
  end

end
