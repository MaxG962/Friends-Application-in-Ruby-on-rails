require "test_helper"

class FriendsInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friends_info = friends_infos(:one)
  end

  test "should get index" do
    get friends_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_friends_info_url
    assert_response :success
  end

  test "should create friends_info" do
    assert_difference("FriendsInfo.count") do
      post friends_infos_url, params: { friends_info: { Contact: @friends_info.Contact, Email: @friends_info.Email, First_name: @friends_info.First_name, Instagram: @friends_info.Instagram, Last_name: @friends_info.Last_name } }
    end

    assert_redirected_to friends_info_url(FriendsInfo.last)
  end

  test "should show friends_info" do
    get friends_info_url(@friends_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_friends_info_url(@friends_info)
    assert_response :success
  end

  test "should update friends_info" do
    patch friends_info_url(@friends_info), params: { friends_info: { Contact: @friends_info.Contact, Email: @friends_info.Email, First_name: @friends_info.First_name, Instagram: @friends_info.Instagram, Last_name: @friends_info.Last_name } }
    assert_redirected_to friends_info_url(@friends_info)
  end

  test "should destroy friends_info" do
    assert_difference("FriendsInfo.count", -1) do
      delete friends_info_url(@friends_info)
    end

    assert_redirected_to friends_infos_url
  end
end
