require "test_helper"

class OrganizationListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_list = organization_lists(:one)
  end

  test "should get index" do
    get organization_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_list_url
    assert_response :success
  end

  test "should create organization_list" do
    assert_difference('OrganizationList.count') do
      post organization_lists_url, params: { organization_list: { orgID: @organization_list.orgID, orgListID: @organization_list.orgListID } }
    end

    assert_redirected_to organization_list_url(OrganizationList.last)
  end

  test "should show organization_list" do
    get organization_list_url(@organization_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_list_url(@organization_list)
    assert_response :success
  end

  test "should update organization_list" do
    patch organization_list_url(@organization_list), params: { organization_list: { orgID: @organization_list.orgID, orgListID: @organization_list.orgListID } }
    assert_redirected_to organization_list_url(@organization_list)
  end

  test "should destroy organization_list" do
    assert_difference('OrganizationList.count', -1) do
      delete organization_list_url(@organization_list)
    end

    assert_redirected_to organization_lists_url
  end
end
