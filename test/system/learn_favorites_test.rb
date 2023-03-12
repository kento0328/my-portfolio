require "application_system_test_case"

class LearnFavoritesTest < ApplicationSystemTestCase
  setup do
    @learn_favorite = learn_favorites(:one)
  end

  test "visiting the index" do
    visit learn_favorites_url
    assert_selector "h1", text: "Learn favorites"
  end

  test "should create learn favorite" do
    visit learn_favorites_url
    click_on "New learn favorite"

    fill_in "Learn", with: @learn_favorite.learn_id
    fill_in "User", with: @learn_favorite.user_id
    click_on "Create Learn favorite"

    assert_text "Learn favorite was successfully created"
    click_on "Back"
  end

  test "should update Learn favorite" do
    visit learn_favorite_url(@learn_favorite)
    click_on "Edit this learn favorite", match: :first

    fill_in "Learn", with: @learn_favorite.learn_id
    fill_in "User", with: @learn_favorite.user_id
    click_on "Update Learn favorite"

    assert_text "Learn favorite was successfully updated"
    click_on "Back"
  end

  test "should destroy Learn favorite" do
    visit learn_favorite_url(@learn_favorite)
    click_on "Destroy this learn favorite", match: :first

    assert_text "Learn favorite was successfully destroyed"
  end
end
