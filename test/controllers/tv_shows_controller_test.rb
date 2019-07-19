require 'test_helper'

class TvShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tv_shows_index_url
    assert_response :success
  end

  test "should get show" do
    get tv_shows_show_url
    assert_response :success
  end

  test "should get edit" do
    get tv_shows_edit_url
    assert_response :success
  end

  test "should get new" do
    get tv_shows_new_url
    assert_response :success
  end

end
