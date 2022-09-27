require 'rails_helper'

# Example
RSpec.describe 'Creating a current member', type: :feature do
  scenario 'valid inputs' do
    visit new_current_member_path
    fill_in 'current_member_studentID', with: 1
    fill_in 'Name', with: 'John Doe'
    fill_in 'Email', with: 'johndoe@email.com'
    fill_in 'Isadmin', with: false
    fill_in 'Isalumni', with: false
    click_on 'Create Current member'
    visit current_members_path
    expect(page).to have_content(1)
    expect(page).to have_content('John Doe')
    expect(page).to have_content('johndoe@email.com')
    expect(page).to have_content(false)
    expect(page).to have_content(false)
  end
end