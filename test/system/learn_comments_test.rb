require "application_system_test_case"

class LearnCommentsTest < ApplicationSystemTestCase
  setup do
    @learn_comment = learn_comments(:one)
  end

  test "visiting the index" do
    visit learn_comments_url
    assert_selector "h1", text: "Learn comments"
  end

  test "should create learn comment" do
    visit learn_comments_url
    click_on "New learn comment"

    fill_in "Learn comment", with: @learn_comment.learn_comment
    fill_in "Learn", with: @learn_comment.learn_id
    fill_in "User", with: @learn_comment.user_id
    click_on "Create Learn comment"

    assert_text "Learn comment was successfully created"
    click_on "Back"
  end

  test "should update Learn comment" do
    visit learn_comment_url(@learn_comment)
    click_on "Edit this learn comment", match: :first

    fill_in "Learn comment", with: @learn_comment.learn_comment
    fill_in "Learn", with: @learn_comment.learn_id
    fill_in "User", with: @learn_comment.user_id
    click_on "Update Learn comment"

    assert_text "Learn comment was successfully updated"
    click_on "Back"
  end

  test "should destroy Learn comment" do
    visit learn_comment_url(@learn_comment)
    click_on "Destroy this learn comment", match: :first

    assert_text "Learn comment was successfully destroyed"
  end
end
