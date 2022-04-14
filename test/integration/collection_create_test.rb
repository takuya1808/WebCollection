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
end
