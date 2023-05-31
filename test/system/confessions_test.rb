require "application_system_test_case"

class ConfessionsTest < ApplicationSystemTestCase
  setup do
    @confession = confessions(:one)
  end

  test "visiting the index" do
    visit confessions_url
    assert_selector "h1", text: "Confessions"
  end

  test "should create confession" do
    visit confessions_url
    click_on "New confession"

    fill_in "Dislikes", with: @confession.dislikes
    fill_in "Likes", with: @confession.likes
    fill_in "Title", with: @confession.title
    click_on "Create Confession"

    assert_text "Confession was successfully created"
    click_on "Back"
  end

  test "should update Confession" do
    visit confession_url(@confession)
    click_on "Edit this confession", match: :first

    fill_in "Dislikes", with: @confession.dislikes
    fill_in "Likes", with: @confession.likes
    fill_in "Title", with: @confession.title
    click_on "Update Confession"

    assert_text "Confession was successfully updated"
    click_on "Back"
  end

  test "should destroy Confession" do
    visit confession_url(@confession)
    click_on "Destroy this confession", match: :first

    assert_text "Confession was successfully destroyed"
  end
end
