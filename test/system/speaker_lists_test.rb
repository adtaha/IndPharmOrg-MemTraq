require 'application_system_test_case'

class SpeakerListsTest < ApplicationSystemTestCase
     before do
          @speaker_list = speaker_lists(:one)
     end

     test 'visiting the index' do
          visit speaker_lists_url
          assert_selector 'h1', text: 'Speaker Lists'
     end

     test 'creating a Speaker list' do
          visit speaker_lists_url
          click_on 'New Speaker List'

          fill_in 'Speakerid', with: @speaker_list.speakerID
          fill_in 'Speakerlistid', with: @speaker_list.speakerListID
          click_on 'Create Speaker list'

          assert_text 'Speaker list was successfully created'
          click_on 'Back'
     end

     test 'updating a Speaker list' do
          visit speaker_lists_url
          click_on 'Edit', match: :first

          fill_in 'Speakerid', with: @speaker_list.speakerID
          fill_in 'Speakerlistid', with: @speaker_list.speakerListID
          click_on 'Update Speaker list'

          assert_text 'Speaker list was successfully updated'
          click_on 'Back'
     end

     test 'destroying a Speaker list' do
          visit speaker_lists_url
          page.accept_confirm do
               click_on 'Destroy', match: :first
          end

          assert_text 'Speaker list was successfully destroyed'
     end
end
