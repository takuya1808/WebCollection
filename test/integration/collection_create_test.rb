require "test_helper"

class CollectionCreateTest < ActionDispatch::IntegrationTest
  
  test "invalid collection create information" do
    get new_path
    assert_no_difference "Collection.count" do
      post new_path, params: {collection: { title: "",
                                            url: "htpps://google.com/"}}
    end
    assert_template 'new'
    assert_select 'div.alert'
  end

  test "Successful collection posting" do
    get new_path
    image = fixture_file_upload('test/fixtures/testsite.png', 'image/png')
    assert_difference "Collection.count", 1 do
      post new_path, params: {collection: { title: "test",
                                            url: "http://www.example.com/",
                                            image: image }}
    end
    assert assigns(:collection).image?
    follow_redirect!
    assert_template 'web_collections/index'
    assert_not flash.nil?
  end
end
