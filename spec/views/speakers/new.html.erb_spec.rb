require 'rails_helper'

RSpec.describe "speakers/new", type: :view do
  before(:each) do
    assign(:speaker, Speaker.new(
      speakerID: 1,
      speakerName: "MyString",
      speakerEmail: "MyString",
      organizationName: "MyString",
      speakerWebsite: "MyString"
    ))
  end

  it "renders new speaker form" do
    render

    assert_select "form[action=?][method=?]", speakers_path, "post" do

      assert_select "input[name=?]", "speaker[speakerID]"

      assert_select "input[name=?]", "speaker[speakerName]"

      assert_select "input[name=?]", "speaker[speakerEmail]"

      assert_select "input[name=?]", "speaker[organizationName]"

      assert_select "input[name=?]", "speaker[speakerWebsite]"
    end
  end
end
