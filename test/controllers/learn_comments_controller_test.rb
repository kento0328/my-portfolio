require "test_helper"

class LearnCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learn_comment = learn_comments(:one)
  end

  test "should get index" do
    get learn_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_learn_comment_url
    assert_response :success
  end

  test "should create learn_comment" do
    assert_difference("LearnComment.count") do
      post learn_comments_url, params: { learn_comment: { learn_comment: @learn_comment.learn_comment, learn_id: @learn_comment.learn_id, user_id: @learn_comment.user_id } }
    end

    assert_redirected_to learn_comment_url(LearnComment.last)
  end

  test "should show learn_comment" do
    get learn_comment_url(@learn_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_learn_comment_url(@learn_comment)
    assert_response :success
  end

  test "should update learn_comment" do
    patch learn_comment_url(@learn_comment), params: { learn_comment: { learn_comment: @learn_comment.learn_comment, learn_id: @learn_comment.learn_id, user_id: @learn_comment.user_id } }
    assert_redirected_to learn_comment_url(@learn_comment)
  end

  test "should destroy learn_comment" do
    assert_difference("LearnComment.count", -1) do
      delete learn_comment_url(@learn_comment)
    end

    assert_redirected_to learn_comments_url
  end
end
