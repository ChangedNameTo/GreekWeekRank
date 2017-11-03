require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get logged_out" do
    get home_logged_out_url
    assert_response :success
  end

end
