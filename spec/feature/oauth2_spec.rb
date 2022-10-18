    require 'rails_helper'

def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
    provider: "google_oauth2",
      uid: "12345678910",
      info: {
        email: "brycewatt@mail.com",
        first_name: "Bryce",
        last_name: "Watt"
      },
      credentials: {
        token: "abcdefg12345",
        refresh_token: "abcdefg12345",
        expires_at: DateTime.now,
      }
    })
  end

RSpec.feature "user logs in" do
  scenario "using google oauth2 'omniauth'" do
    stub_omniauth

    visit root_path

    expect(page).to have_link("Sign in with Google")

    # click_link "Sign in with Google"

    # expect(page).to have_content("Bryce Watt")
    # expect(page).to have_content("Logout")
  end
end