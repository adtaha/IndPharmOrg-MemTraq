require "application_system_test_case"

class CurrMembersTest < ApplicationSystemTestCase
  setup do
    @curr_member = curr_members(:one)
  end

  test "visiting the index" do
    visit curr_members_url
    assert_selector "h1", text: "Curr Members"
  end

  test "creating a Curr member" do
    visit curr_members_url
    click_on "New Curr Member"

    fill_in "Email", with: @curr_member.email
    fill_in "Name", with: @curr_member.name
    fill_in "Studentid", with: @curr_member.studentID
    click_on "Create Curr member"

    assert_text "Curr member was successfully created"
    click_on "Back"
  end

  test "updating a Curr member" do
    visit curr_members_url
    click_on "Edit", match: :first

    fill_in "Email", with: @curr_member.email
    fill_in "Name", with: @curr_member.name
    fill_in "Studentid", with: @curr_member.studentID
    click_on "Update Curr member"

    assert_text "Curr member was successfully updated"
    click_on "Back"
  end

  test "destroying a Curr member" do
    visit curr_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curr member was successfully destroyed"
  end
end
