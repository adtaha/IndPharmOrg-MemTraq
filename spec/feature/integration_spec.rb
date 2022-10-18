require 'rails_helper'

# Example
RSpec.describe 'Creating a Speaker', type: :feature do

  scenario 'valid inputs for a speaker' do
    visit new_speaker_path
    fill_in 'Speakerid', with: 1
    fill_in 'Speakername', with: 'John Doe'
    fill_in 'Speakeremail', with: 'johndoe@email.com'
    fill_in 'Organizationname', with: 'johndoe'
    fill_in 'Speakerwebsite', with: 'www.google.com'
    click_on 'Create Speaker'
    visit speakers_path
    expect(page).to have_content(1)
    expect(page).to have_content('John Doe')
    expect(page).to have_content('johndoe')
  end

end