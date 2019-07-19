require 'test_helper'

class TvShowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tv_show_index_url
    assert_response :success
  end

  test "should get show" do
    get tv_show_show_url
    assert_response :success
  end

  test "should get edit" do
    get tv_show_edit_url
    assert_response :success
  end

  test "should get new" do
    get tv_show_new_url
    assert_response :success
  end

end
