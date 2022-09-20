require 'rails_helper'

# Example
RSpec.describe 'Creating a current member', type: :feature do
  scenario 'valid inputs' do
    visit new_curr_member_path
    fill_in 'curr_member_studentID', with: 1
    fill_in 'Name', with: 'John Doe'
    fill_in 'Email', with: 'johndoe@email.com'
    click_on 'Create Curr member'
    visit curr_members_path
    expect(page).to have_content(1)
    expect(page).to have_content('John Doe')
    expect(page).to have_content('johndoe@email.com')
  end
end

RSpec.describe 'Creating an alumni', type: :feature do
    scenario 'valid inputs' do
      visit new_alumni_path
      fill_in 'Alumniid', with: 1
      fill_in 'Name', with: 'Wade Wilson'
      fill_in 'Email', with: 'wadewilson@email.com'
      fill_in 'alumni_organizationID', with: 20
      click_on 'Create Alumni'
      visit alumnis_path
      expect(page).to have_content(1)
      expect(page).to have_content('Wade Wilson')
      expect(page).to have_content('wadewilson@email.com')
      expect(page).to have_content(20)
    end
  end

  RSpec.describe 'Creating an administrator', type: :feature do
    scenario 'valid inputs' do
      visit new_administrator_path
      fill_in 'Adminid', with: 1
      fill_in 'Name', with: 'George Jetson'
      fill_in 'Email', with: 'gjetson@email.com'
      fill_in 'Role', with: "Vice President"
      click_on 'Create Administrator'
      visit administrators_path
      expect(page).to have_content(1)
      expect(page).to have_content('George Jetson')
      expect(page).to have_content('gjetson@email.com')
      expect(page).to have_content("Vice President")
    end
  end

  RSpec.describe 'Creating a speaker', type: :feature do
    scenario 'valid inputs' do
      visit new_speaker_path
      fill_in 'Speakerid', with: 1
      fill_in 'Speakername', with: 'Fred Flinstone'
      fill_in 'Email', with: 'fflintstone@slate.com'
      fill_in 'speaker_organizationID', with: 12
      click_on 'Create Speaker'
      visit speakers_path
      expect(page).to have_content(1)
      expect(page).to have_content('Fred Flinstone')
      expect(page).to have_content('fflintstone@slate.com')
      expect(page).to have_content(12)
    end
  end

  RSpec.describe 'Creating an organization', type: :feature do
    scenario 'valid inputs' do
      visit new_organization_path
      fill_in 'Organizationid', with: 3
      fill_in 'Orgname', with: 'Stark Industries'
      fill_in 'Email', with: 'tstark@starkindustries.org'
      click_on 'Create Organization'
      visit organizations_path
      expect(page).to have_content(3)
      expect(page).to have_content('Stark Industries')
      expect(page).to have_content('tstark@starkindustries.org')
    end
  end