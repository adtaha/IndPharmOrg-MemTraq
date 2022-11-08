require 'application_system_test_case'

class AlumnisTest < ApplicationSystemTestCase
     before do
          @alumni = alumnis(:one)
     end

     test 'visiting the index' do
          visit alumnis_url
          assert_selector 'h1', text: 'Alumnis'
     end

     test 'creating a Alumni' do
          visit alumnis_url
          click_on 'New Alumni'

          fill_in 'Alumniid', with: @alumni.alumniID
          fill_in 'Email', with: @alumni.email
          fill_in 'Name', with: @alumni.name
          fill_in 'Organizationid', with: @alumni.organizationID
          click_on 'Create Alumni'

          assert_text 'Alumni was successfully created'
          click_on 'Back'
     end

     test 'updating a Alumni' do
          visit alumnis_url
          click_on 'Edit', match: :first

          fill_in 'Alumniid', with: @alumni.alumniID
          fill_in 'Email', with: @alumni.email
          fill_in 'Name', with: @alumni.name
          fill_in 'Organizationid', with: @alumni.organizationID
          click_on 'Update Alumni'

          assert_text 'Alumni was successfully updated'
          click_on 'Back'
     end

     test 'destroying a Alumni' do
          visit alumnis_url
          page.accept_confirm do
               click_on 'Destroy', match: :first
          end

          assert_text 'Alumni was successfully destroyed'
     end
end
