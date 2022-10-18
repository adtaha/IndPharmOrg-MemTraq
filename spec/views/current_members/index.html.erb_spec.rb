require 'rails_helper'

RSpec.describe "current_members/index", type: :view do
  before(:each) do
    assign(:current_members, [
      CurrentMember.create!(
        memberID: 2,
        name: "Name",
        email: "Email",
        isAdmin: false,
        isAlumni: false
      ),
      CurrentMember.create!(
        memberID: 2,
        name: "Name",
        email: "Email",
        isAdmin: false,
        isAlumni: false
      )
    ])
  end

  it "renders a list of current_members" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
  end
end
