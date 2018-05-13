require 'test_helper'

class PageTopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_tops_index_url
    assert_response :success
  end

end
