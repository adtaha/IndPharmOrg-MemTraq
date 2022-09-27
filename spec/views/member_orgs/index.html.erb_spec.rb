require 'rails_helper'

RSpec.describe "member_orgs/index", type: :view do
  before(:each) do
    assign(:member_orgs, [
      MemberOrg.create!(
        memberOrgID: 2,
        memberID: 3,
        organizationID: 4
      ),
      MemberOrg.create!(
        memberOrgID: 2,
        memberID: 3,
        organizationID: 4
      )
    ])
  end

  it "renders a list of member_orgs" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
