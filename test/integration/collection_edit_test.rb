require "test_helper"

class CollectionEditTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  def setup
    @collection = collections(:testsite)
    @user = users(:adminuser)
    sign_in @user
  end

  test "unsuccessful edit" do
    get edit_web_collection_path(@collection)
    assert_template 'web_collections/edit'
    patch web_collection_path(@collection), params: { collection: { title: "",
                                                                    url: "htpps://www.exmple.com/",
                                                                    image: "" }}
    assert_template 'web_collections/edit'
  end

  test "successful edit" do
    get edit_web_collection_path(@collection)
    assert_template 'web_collections/edit'
    title = "testsite1"
    image = fixture_file_upload('test/fixtures/testsite.png', 'image/png')
    patch web_collection_path(@collection), params: { collection: { title: title,
                                                                    url: "htpps://www.exmple.com/",
                                                                    image: image }}
    follow_redirect!
    assert_not flash.empty?
    assert_template 'web_collections/index'
    @collection.reload
    assert_equal title, @collection.title
  end
end
