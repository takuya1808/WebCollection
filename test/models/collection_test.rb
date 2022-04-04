require "test_helper"

class CollectionTest < ActiveSupport::TestCase

  def setup
    @collection = Collection.new(title: "Example title", url: "https://www.google.com/?hl=ja")
  end

  test "should be valid" do
    assert @collection.valid?
  end

  test "title should be present" do
    @collection.title = "     "
    assert_not @collection.valid?
  end

end