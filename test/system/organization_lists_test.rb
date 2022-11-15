require 'application_system_test_case'

class OrganizationListsTest < ApplicationSystemTestCase
     before do
          @organization_list = organization_lists(:one)
     end

     test 'visiting the index' do
          visit organization_lists_url
          assert_selector 'h1', text: 'Organization Lists'
     end

     test 'creating a Organization list' do
          visit organization_lists_url
          click_on 'New Organization List'

          fill_in 'Orgid', with: @organization_list.orgID
          fill_in 'Orglistid', with: @organization_list.orgListID
          click_on 'Create Organization list'

          assert_text 'Organization list was successfully created'
          click_on 'Back'
     end

     test 'updating a Organization list' do
          visit organization_lists_url
          click_on 'Edit', match: :first

          fill_in 'Orgid', with: @organization_list.orgID
          fill_in 'Orglistid', with: @organization_list.orgListID
          click_on 'Update Organization list'

          assert_text 'Organization list was successfully updated'
          click_on 'Back'
     end

     test 'destroying a Organization list' do
          visit organization_lists_url
          page.accept_confirm do
               click_on 'Destroy', match: :first
          end

          assert_text 'Organization list was successfully destroyed'
     end
end
