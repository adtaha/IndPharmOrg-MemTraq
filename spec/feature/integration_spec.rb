require 'rails_helper'

# Example
RSpec.describe('Creating a current member', type: :feature) do
     it 'valid inputs for a member who is an alumni and an admin' do
          visit new_current_member_path
          fill_in 'current_member_memberID', with: '1'
          fill_in 'Name', with: 'John Doe'
          fill_in 'Email', with: 'johndoe@email.com'
          check 'Isadmin'
          check 'Isalumni'
          click_on 'Create Current member'
          visit current_members_path
          expect(page).to(have_content(1))
          expect(page).to(have_content('John Doe'))
          expect(page).to(have_content('johndoe@email.com'))
          expect(page).to(have_content(true))
          expect(page).to(have_content(true))
     end

     it 'valid inputs for a member who is not an alumni or an admin' do
          visit new_current_member_path
          fill_in 'current_member_memberID', with: '2'
          fill_in 'Name', with: 'Jane Doe'
          fill_in 'Email', with: 'janedoe@email.com'
          uncheck 'Isadmin'
          uncheck 'Isalumni'
          click_on 'Create Current member'
          visit current_members_path
          expect(page).to(have_content(2))
          expect(page).to(have_content('Jane Doe'))
          expect(page).to(have_content('janedoe@email.com'))
          expect(page).to(have_content(false))
          expect(page).to(have_content(false))
     end
end

RSpec.describe('Creating a organization', type: :feature) do
     it 'valid inputs for an organization' do
          visit new_organization_path
          fill_in 'organization_organizationID', with: 1
          fill_in 'Name', with: 'ACME'
          fill_in 'Email', with: 'ACME@email.com'
          click_on 'Create Organization'
          visit organizations_path
          expect(page).to(have_content(1))
          expect(page).to(have_content('ACME'))
          expect(page).to(have_content('ACME@email.com'))
     end
end

RSpec.describe 'Creating a Speaker', type: :feature do
  scenario 'valid inputs for a speaker' do
    visit new_speaker_path
    fill_in 'Speakerid', with: 1
    fill_in 'Speakername', with: 'John Doe'
    fill_in 'Speakeremail', with: 'johndoe@email.com'
    fill_in 'OrganizationID', with: 1
    fill_in 'Speakerwebsite', with: 'www.google.com'
    click_on 'Create Speaker'
    visit speakers_path
    expect(page).to have_content(1)
    expect(page).to have_content('John Doe')
    expect(page).to have_content(1)
  end
end

