require 'test_helper'

class CraigslistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get craigslist_index_url
    assert_response :success
  end

end
