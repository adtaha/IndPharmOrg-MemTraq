require 'rails_helper'

RSpec.describe "member_orgs/show", type: :view do
  before(:each) do
    @member_org = assign(:member_org, MemberOrg.create!(
      memberOrgID: 2,
      memberID: 3,
      organizationID: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
