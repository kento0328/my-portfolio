require "application_system_test_case"

class DisscussCommentsTest < ApplicationSystemTestCase
  setup do
    @disscuss_comment = disscuss_comments(:one)
  end

  test "visiting the index" do
    visit disscuss_comments_url
    assert_selector "h1", text: "Disscuss comments"
  end

  test "should create disscuss comment" do
    visit disscuss_comments_url
    click_on "New disscuss comment"

    fill_in "Discuss comment", with: @disscuss_comment.discuss_comment
    fill_in "Discuss", with: @disscuss_comment.discuss_id
    fill_in "User", with: @disscuss_comment.user_id
    click_on "Create Disscuss comment"

    assert_text "Disscuss comment was successfully created"
    click_on "Back"
  end

  test "should update Disscuss comment" do
    visit disscuss_comment_url(@disscuss_comment)
    click_on "Edit this disscuss comment", match: :first

    fill_in "Discuss comment", with: @disscuss_comment.discuss_comment
    fill_in "Discuss", with: @disscuss_comment.discuss_id
    fill_in "User", with: @disscuss_comment.user_id
    click_on "Update Disscuss comment"

    assert_text "Disscuss comment was successfully updated"
    click_on "Back"
  end

  test "should destroy Disscuss comment" do
    visit disscuss_comment_url(@disscuss_comment)
    click_on "Destroy this disscuss comment", match: :first

    assert_text "Disscuss comment was successfully destroyed"
  end
end
