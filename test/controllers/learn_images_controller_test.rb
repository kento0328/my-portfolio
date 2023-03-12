require "test_helper"

class LearnImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learn_image = learn_images(:one)
  end

  test "should get index" do
    get learn_images_url
    assert_response :success
  end

  test "should get new" do
    get new_learn_image_url
    assert_response :success
  end

  test "should create learn_image" do
    assert_difference("LearnImage.count") do
      post learn_images_url, params: { learn_image: { learn_id: @learn_image.learn_id, learn_image: @learn_image.learn_image } }
    end

    assert_redirected_to learn_image_url(LearnImage.last)
  end

  test "should show learn_image" do
    get learn_image_url(@learn_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_learn_image_url(@learn_image)
    assert_response :success
  end

  test "should update learn_image" do
    patch learn_image_url(@learn_image), params: { learn_image: { learn_id: @learn_image.learn_id, learn_image: @learn_image.learn_image } }
    assert_redirected_to learn_image_url(@learn_image)
  end

  test "should destroy learn_image" do
    assert_difference("LearnImage.count", -1) do
      delete learn_image_url(@learn_image)
    end

    assert_redirected_to learn_images_url
  end
end
