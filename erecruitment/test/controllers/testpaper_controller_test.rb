require 'test_helper'

class TestpaperControllerTest < ActionController::TestCase
  test "should get test" do
    get :test
    assert_response :success
  end

end
