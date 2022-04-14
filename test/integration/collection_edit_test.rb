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
end
