require "application_system_test_case"

class WebCollectionsTest < ApplicationSystemTestCase
  setup do
    @web_collection = web_collections(:one)
  end

  test "visiting the index" do
    visit web_collections_url
    assert_selector "h1", text: "Web collections"
  end

  test "should create web collection" do
    visit web_collections_url
    click_on "New web collection"

    click_on "Create Web collection"

    assert_text "Web collection was successfully created"
    click_on "Back"
  end

  test "should update Web collection" do
    visit web_collection_url(@web_collection)
    click_on "Edit this web collection", match: :first

    click_on "Update Web collection"

    assert_text "Web collection was successfully updated"
    click_on "Back"
  end

  test "should destroy Web collection" do
    visit web_collection_url(@web_collection)
    click_on "Destroy this web collection", match: :first

    assert_text "Web collection was successfully destroyed"
  end
end
