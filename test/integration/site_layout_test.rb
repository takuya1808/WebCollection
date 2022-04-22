require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template 'web_collections/index'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", about_path
    #assert_select "a[href=?]", new_path
    get about_path
    assert_select "title", full_title("About")
  end
end
