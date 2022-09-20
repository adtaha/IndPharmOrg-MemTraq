require "test_helper"

class MemberListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_list = member_lists(:one)
  end

  test "should get index" do
    get member_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_member_list_url
    assert_response :success
  end

  test "should create member_list" do
    assert_difference('MemberList.count') do
      post member_lists_url, params: { member_list: { memberID: @member_list.memberID, memberListID: @member_list.memberListID } }
    end

    assert_redirected_to member_list_url(MemberList.last)
  end

  test "should show member_list" do
    get member_list_url(@member_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_list_url(@member_list)
    assert_response :success
  end

  test "should update member_list" do
    patch member_list_url(@member_list), params: { member_list: { memberID: @member_list.memberID, memberListID: @member_list.memberListID } }
    assert_redirected_to member_list_url(@member_list)
  end

  test "should destroy member_list" do
    assert_difference('MemberList.count', -1) do
      delete member_list_url(@member_list)
    end

    assert_redirected_to member_lists_url
  end
end
