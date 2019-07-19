require 'test_helper'

class AnimeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get anime_index_url
    assert_response :success
  end

  test "should get show" do
    get anime_show_url
    assert_response :success
  end

  test "should get edit" do
    get anime_edit_url
    assert_response :success
  end

  test "should get new" do
    get anime_new_url
    assert_response :success
  end

end
