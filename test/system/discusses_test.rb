require "application_system_test_case"

class DiscussesTest < ApplicationSystemTestCase
  setup do
    @discuss = discusses(:one)
  end

  test "visiting the index" do
    visit discusses_url
    assert_selector "h1", text: "Discusses"
  end

  test "should create discuss" do
    visit discusses_url
    click_on "New discuss"

    fill_in "Comment", with: @discuss.comment
    fill_in "Content", with: @discuss.content
    fill_in "Id", with: @discuss.id
    fill_in "Title", with: @discuss.title
    click_on "Create Discuss"

    assert_text "Discuss was successfully created"
    click_on "Back"
  end

  test "should update Discuss" do
    visit discuss_url(@discuss)
    click_on "Edit this discuss", match: :first

    fill_in "Comment", with: @discuss.comment
    fill_in "Content", with: @discuss.content
    fill_in "Id", with: @discuss.id
    fill_in "Title", with: @discuss.title
    click_on "Update Discuss"

    assert_text "Discuss was successfully updated"
    click_on "Back"
  end

  test "should destroy Discuss" do
    visit discuss_url(@discuss)
    click_on "Destroy this discuss", match: :first

    assert_text "Discuss was successfully destroyed"
  end
end
