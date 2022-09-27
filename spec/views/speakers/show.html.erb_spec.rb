require 'rails_helper'

RSpec.describe "speakers/show", type: :view do
  before(:each) do
    @speaker = assign(:speaker, Speaker.create!(
      speakerID: 2,
      name: "Name",
      email: "Email",
      organizationID: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/3/)
  end
end
