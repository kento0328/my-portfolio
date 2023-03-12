require "test_helper"

class DisscussCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disscuss_comment = disscuss_comments(:one)
  end

  test "should get index" do
    get disscuss_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_disscuss_comment_url
    assert_response :success
  end

  test "should create disscuss_comment" do
    assert_difference("DisscussComment.count") do
      post disscuss_comments_url, params: { disscuss_comment: { discuss_comment: @disscuss_comment.discuss_comment, discuss_id: @disscuss_comment.discuss_id, user_id: @disscuss_comment.user_id } }
    end

    assert_redirected_to disscuss_comment_url(DisscussComment.last)
  end

  test "should show disscuss_comment" do
    get disscuss_comment_url(@disscuss_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_disscuss_comment_url(@disscuss_comment)
    assert_response :success
  end

  test "should update disscuss_comment" do
    patch disscuss_comment_url(@disscuss_comment), params: { disscuss_comment: { discuss_comment: @disscuss_comment.discuss_comment, discuss_id: @disscuss_comment.discuss_id, user_id: @disscuss_comment.user_id } }
    assert_redirected_to disscuss_comment_url(@disscuss_comment)
  end

  test "should destroy disscuss_comment" do
    assert_difference("DisscussComment.count", -1) do
      delete disscuss_comment_url(@disscuss_comment)
    end

    assert_redirected_to disscuss_comments_url
  end
end
