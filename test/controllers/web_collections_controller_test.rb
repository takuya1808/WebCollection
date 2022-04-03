require "test_helper"

class WebCollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

  test "should get new" do
    get new_path
    assert_response :success
  end

  test "should get edit" do
    get edit_path
    assert_response :success
  end
end
