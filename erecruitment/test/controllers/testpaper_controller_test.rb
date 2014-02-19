require 'test_helper'

class TestpaperControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
