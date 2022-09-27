require 'rails_helper'

RSpec.describe "member_orgs/edit", type: :view do
  before(:each) do
    @member_org = assign(:member_org, MemberOrg.create!(
      memberOrgID: 1,
      memberID: 1,
      organizationID: 1
    ))
  end

  it "renders the edit member_org form" do
    render

    assert_select "form[action=?][method=?]", member_org_path(@member_org), "post" do

      assert_select "input[name=?]", "member_org[memberOrgID]"

      assert_select "input[name=?]", "member_org[memberID]"

      assert_select "input[name=?]", "member_org[organizationID]"
    end
  end
end
