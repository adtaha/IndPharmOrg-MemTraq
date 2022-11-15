require 'application_system_test_case'

class MemberListsTest < ApplicationSystemTestCase
     before do
          @member_list = member_lists(:one)
     end

     test 'visiting the index' do
          visit member_lists_url
          assert_selector 'h1', text: 'Member Lists'
     end

     test 'creating a Member list' do
          visit member_lists_url
          click_on 'New Member List'

          fill_in 'Memberid', with: @member_list.memberID
          fill_in 'Memberlistid', with: @member_list.memberListID
          click_on 'Create Member list'

          assert_text 'Member list was successfully created'
          click_on 'Back'
     end

     test 'updating a Member list' do
          visit member_lists_url
          click_on 'Edit', match: :first

          fill_in 'Memberid', with: @member_list.memberID
          fill_in 'Memberlistid', with: @member_list.memberListID
          click_on 'Update Member list'

          assert_text 'Member list was successfully updated'
          click_on 'Back'
     end

     test 'destroying a Member list' do
          visit member_lists_url
          page.accept_confirm do
               click_on 'Destroy', match: :first
          end

          assert_text 'Member list was successfully destroyed'
     end
end
