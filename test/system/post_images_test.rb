require "application_system_test_case"

class PostImagesTest < ApplicationSystemTestCase
  setup do
    @post_image = post_images(:one)
  end

  test "visiting the index" do
    visit post_images_url
    assert_selector "h1", text: "Post images"
  end

  test "should create post image" do
    visit post_images_url
    click_on "New post image"

    fill_in "Post", with: @post_image.post_id
    fill_in "Post image", with: @post_image.post_image
    click_on "Create Post image"

    assert_text "Post image was successfully created"
    click_on "Back"
  end

  test "should update Post image" do
    visit post_image_url(@post_image)
    click_on "Edit this post image", match: :first

    fill_in "Post", with: @post_image.post_id
    fill_in "Post image", with: @post_image.post_image
    click_on "Update Post image"

    assert_text "Post image was successfully updated"
    click_on "Back"
  end

  test "should destroy Post image" do
    visit post_image_url(@post_image)
    click_on "Destroy this post image", match: :first

    assert_text "Post image was successfully destroyed"
  end
end
