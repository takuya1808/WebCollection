require "test_helper"

class WebCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_collection = web_collections(:one)
  end

  test "should get index" do
    get web_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_web_collection_url
    assert_response :success
  end

  test "should create web_collection" do
    assert_difference("WebCollection.count") do
      post web_collections_url, params: { web_collection: {  } }
    end

    assert_redirected_to web_collection_url(WebCollection.last)
  end

  test "should show web_collection" do
    get web_collection_url(@web_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_collection_url(@web_collection)
    assert_response :success
  end

  test "should update web_collection" do
    patch web_collection_url(@web_collection), params: { web_collection: {  } }
    assert_redirected_to web_collection_url(@web_collection)
  end

  test "should destroy web_collection" do
    assert_difference("WebCollection.count", -1) do
      delete web_collection_url(@web_collection)
    end

    assert_redirected_to web_collections_url
  end
end
