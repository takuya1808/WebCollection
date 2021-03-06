require "test_helper"

class CollectionTest < ActiveSupport::TestCase

  def setup
    @collection = Collection.new( title: "Example title",
                                  url: "https://www.google.com/?hl=ja", 
                                  image: File.open("./test/fixtures/testsite.png"))
  end

  test "should be valid" do
    assert @collection.valid?
  end

  test "title should be present" do
    @collection.title = "     "
    assert_not @collection.valid?
  end

  test "url should be present" do
    @collection.url = "     "
    assert_not @collection.valid?
  end

  test "url should not be too long" do
    @collection.url = "https://" + ("a" * 240) + ".example.com"
    assert_not @collection.valid?
  end

  test "url should be unique" do
    duplicate_url = @collection.dup
    duplicate_url.url = @collection.url.upcase
    @collection.save
    assert_not duplicate_url.valid?
  end

  test "url should be saved as lower-case" do
    mixed_case_url = "https://FooExAMPle.CoM"
    @collection.url = mixed_case_url
    @collection.save
    assert_equal mixed_case_url.downcase, @collection.reload.url
  end

  test "image should be present" do
    @collection.image = ""
    assert_not @collection.valid?
  end

end
