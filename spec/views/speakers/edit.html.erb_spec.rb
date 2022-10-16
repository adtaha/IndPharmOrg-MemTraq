require 'rails_helper'

RSpec.describe "speakers/edit", type: :view do
  before(:each) do
    @speaker = assign(:speaker, Speaker.create!(
      speakerID: 1,
      speakerName: "MyString",
      speakerEmail: "MyString",
      organizationName: "MyString",
      speakerWebsite: "MyString"
    ))
  end

  it "renders the edit speaker form" do
    render

    assert_select "form[action=?][method=?]", speaker_path(@speaker), "post" do

      assert_select "input[name=?]", "speaker[speakerID]"

      assert_select "input[name=?]", "speaker[speakerName]"

      assert_select "input[name=?]", "speaker[speakerEmail]"

      assert_select "input[name=?]", "speaker[organizationName]"

      assert_select "input[name=?]", "speaker[speakerWebsite]"
    end
  end
end
