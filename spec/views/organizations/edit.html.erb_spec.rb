require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      organizationID: 1,
      organizationName: "MyString",
      organizationEmail: "MyString"
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input[name=?]", "organization[organizationID]"

      assert_select "input[name=?]", "organization[organizationName]"

      assert_select "input[name=?]", "organization[organizationEmail]"
    end
  end
end
