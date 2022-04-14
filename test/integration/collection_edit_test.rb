require "test_helper"

class CollectionEditTest < ActionDispatch::IntegrationTest
  def setup
    @collection = collections(:testsite)
  end

  test "unsuccessful edit" do
    get edit_web_collection_path(@collection)
    assert_template 'web_collections/edit'
    patch web_collection_path(@collection), params: { collection: {  title: "",
                                                                      url: "htpps://www.exmple.com/"}}
    assert_template 'web_collections/edit'
  end

  test "successful edit" do
    get edit_web_collection_path(@collection)
    assert_template 'web_collections/edit'
    title = "testsite1"
    patch web_collection_path(@collection), params: { collection: {  title: title,
                                                                      url: "htpps://www.exmple.com/"}}
    follow_redirect!
    assert_not flash.empty?
    assert_template 'web_collections/index'
    @collection.reload
    assert_equal title, @collection.title
  end
end
