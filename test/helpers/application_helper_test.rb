require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Web Collection"
    assert_equal full_title("Help"), "Help | Web Collection"
  end
end