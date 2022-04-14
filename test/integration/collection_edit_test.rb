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
    patch web_collection_path(@collection), params: { collection: {  title: "testsite1",
                                                                      url: "htpps://www.exmple.com/"}}
    follow_redirect!
    assert_template 'web_collections/index'
    assert_not flash.nil?
  end
end
