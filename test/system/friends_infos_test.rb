require "application_system_test_case"

class FriendsInfosTest < ApplicationSystemTestCase
  setup do
    @friends_info = friends_infos(:one)
  end

  test "visiting the index" do
    visit friends_infos_url
    assert_selector "h1", text: "Friends infos"
  end

  test "should create friends info" do
    visit friends_infos_url
    click_on "New friends info"

    fill_in "Contact", with: @friends_info.Contact
    fill_in "Email", with: @friends_info.Email
    fill_in "First name", with: @friends_info.First_name
    fill_in "Instagram", with: @friends_info.Instagram
    fill_in "Last name", with: @friends_info.Last_name
    click_on "Create Friends info"

    assert_text "Friends info was successfully created"
    click_on "Back"
  end

  test "should update Friends info" do
    visit friends_info_url(@friends_info)
    click_on "Edit this friends info", match: :first

    fill_in "Contact", with: @friends_info.Contact
    fill_in "Email", with: @friends_info.Email
    fill_in "First name", with: @friends_info.First_name
    fill_in "Instagram", with: @friends_info.Instagram
    fill_in "Last name", with: @friends_info.Last_name
    click_on "Update Friends info"

    assert_text "Friends info was successfully updated"
    click_on "Back"
  end

  test "should destroy Friends info" do
    visit friends_info_url(@friends_info)
    click_on "Destroy this friends info", match: :first

    assert_text "Friends info was successfully destroyed"
  end
end
