require 'rails_helper'

RSpec.describe "organizations/show", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      organizationID: 2,
      name: "Organization Name",
      email: "Organization Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Organization Name/)
    expect(rendered).to match(/Organization Email/)
  end
end
