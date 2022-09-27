require 'rails_helper'

RSpec.describe "current_members/edit", type: :view do
  before(:each) do
    @current_member = assign(:current_member, CurrentMember.create!(
      memberID: 1,
      name: "MyString",
      email: "MyString",
      isAdmin: false,
      isAlumni: false
    ))
  end

  it "renders the edit current_member form" do
    render

    assert_select "form[action=?][method=?]", current_member_path(@current_member), "post" do

      assert_select "input[name=?]", "current_member[memberID]"

      assert_select "input[name=?]", "current_member[name]"

      assert_select "input[name=?]", "current_member[email]"

      assert_select "input[name=?]", "current_member[isAdmin]"

      assert_select "input[name=?]", "current_member[isAlumni]"
    end
  end
end
