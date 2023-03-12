require "application_system_test_case"

class LearnImagesTest < ApplicationSystemTestCase
  setup do
    @learn_image = learn_images(:one)
  end

  test "visiting the index" do
    visit learn_images_url
    assert_selector "h1", text: "Learn images"
  end

  test "should create learn image" do
    visit learn_images_url
    click_on "New learn image"

    fill_in "Learn", with: @learn_image.learn_id
    fill_in "Learn image", with: @learn_image.learn_image
    click_on "Create Learn image"

    assert_text "Learn image was successfully created"
    click_on "Back"
  end

  test "should update Learn image" do
    visit learn_image_url(@learn_image)
    click_on "Edit this learn image", match: :first

    fill_in "Learn", with: @learn_image.learn_id
    fill_in "Learn image", with: @learn_image.learn_image
    click_on "Update Learn image"

    assert_text "Learn image was successfully updated"
    click_on "Back"
  end

  test "should destroy Learn image" do
    visit learn_image_url(@learn_image)
    click_on "Destroy this learn image", match: :first

    assert_text "Learn image was successfully destroyed"
  end
end
