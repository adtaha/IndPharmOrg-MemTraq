require 'rails_helper'

RSpec.describe "speakers/edit", type: :view do
  before(:each) do
    @speaker = assign(:speaker, Speaker.create!(
      speakerID: 1,
      name: "MyString",
      email: "MyString",
      organizationID: 1
    ))
  end

  it "renders the edit speaker form" do
    render

    assert_select "form[action=?][method=?]", speaker_path(@speaker), "post" do

      assert_select "input[name=?]", "speaker[speakerID]"

      assert_select "input[name=?]", "speaker[name]"

      assert_select "input[name=?]", "speaker[email]"

      assert_select "input[name=?]", "speaker[organizationID]"
    end
  end
end
