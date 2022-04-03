require "test_helper"

class WebCollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_collections_index_url
    assert_response :success
  end

  test "should get about" do
    get web_collections_about_url
    assert_response :success
  end

  test "should get show" do
    get web_collections_show_url
    assert_response :success
  end

  test "should get new" do
    get web_collections_new_url
    assert_response :success
  end

  test "should get edit" do
    get web_collections_edit_url
    assert_response :success
  end
end
