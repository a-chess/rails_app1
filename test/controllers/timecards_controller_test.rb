require 'test_helper'

class TimecardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get timecards_show_url
    assert_response :success
  end

  test "should get index" do
    get timecards_index_url
    assert_response :success
  end

end
