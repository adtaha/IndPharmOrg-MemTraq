require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      organizationID: 1,
      name: "MyString",
      email: "MyString"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input[name=?]", "organization[organizationID]"

      assert_select "input[name=?]", "organization[name]"

      assert_select "input[name=?]", "organization[email]"
    end
  end
end
