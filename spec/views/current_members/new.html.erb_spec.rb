require 'rails_helper'

RSpec.describe "current_members/new", type: :view do
  before(:each) do
    assign(:current_member, CurrentMember.new(
      memberID: 1,
      name: "MyString",
      email: "MyString",
      isAdmin: false,
      isAlumni: false
    ))
  end

  it "renders new current_member form" do
    render

    assert_select "form[action=?][method=?]", current_members_path, "post" do

      assert_select "input[name=?]", "current_member[memberID]"

      assert_select "input[name=?]", "current_member[name]"

      assert_select "input[name=?]", "current_member[email]"

      assert_select "input[name=?]", "current_member[isAdmin]"

      assert_select "input[name=?]", "current_member[isAlumni]"
    end
  end
end
