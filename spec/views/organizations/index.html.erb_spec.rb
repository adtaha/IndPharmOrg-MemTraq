require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        organizationID: 2,
        organizationName: "Organization Name",
        organizationEmail: "Organization Email"
      ),
      Organization.create!(
        organizationID: 2,
        organizationName: "Organization Name",
        organizationEmail: "Organization Email"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Organization Name".to_s, count: 2
    assert_select "tr>td", text: "Organization Email".to_s, count: 2
  end
end
