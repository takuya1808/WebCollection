require "test_helper"

class WebCollectionsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Web Collection"
  end

  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get show" do
    get show_path
    assert_response :success
    assert_select "title", "Show | #{@base_title}"
  end

  test "should get new" do
    get new_path
    assert_response :success
    assert_select "title", "New | #{@base_title}"
  end

  test "should get edit" do
    get edit_path
    assert_response :success
    assert_select "title", "Edit | #{@base_title}"
  end
end
