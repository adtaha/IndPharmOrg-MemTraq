require 'rails_helper'

RSpec.describe "speakers/new", type: :view do
  before(:each) do
    assign(:speaker, Speaker.new(
      speakerID: 1,
      name: "MyString",
      email: "MyString",
      organizationID: 1
    ))
  end

  it "renders new speaker form" do
    render

    assert_select "form[action=?][method=?]", speakers_path, "post" do

      assert_select "input[name=?]", "speaker[speakerID]"

      assert_select "input[name=?]", "speaker[name]"

      assert_select "input[name=?]", "speaker[email]"

      assert_select "input[name=?]", "speaker[organizationID]"
    end
  end
end
