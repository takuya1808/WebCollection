require "test_helper"

class WebCollectionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @base_title = "Web Collection"
    sign_in users(:adminuser)
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
    #get show_path(1)
    #assert_response :success
    #assert_select "title", "#{@collection.title} | #{@base_title}"
  end

  test "should get new" do
    get new_path
    assert_response :success
    assert_select "title", "New | #{@base_title}"
  end

end
