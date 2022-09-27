require 'rails_helper'

RSpec.describe "speakers/index", type: :view do
  before(:each) do
    assign(:speakers, [
      Speaker.create!(
        speakerID: 2,
        name: "Name",
        email: "Email",
        organizationID: 3
      ),
      Speaker.create!(
        speakerID: 2,
        name: "Name",
        email: "Email",
        organizationID: 3
      )
    ])
  end

  it "renders a list of speakers" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
