require "test_helper"

class Buyers::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buyers_dashboard_index_url
    assert_response :success
  end
end
