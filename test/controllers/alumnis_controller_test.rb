require 'test_helper'

class AlumnisControllerTest < ActionDispatch::IntegrationTest
     before do
          @alumni = alumnis(:one)
     end

     test 'should get index' do
          get alumnis_url
          assert_response :success
     end

     test 'should get new' do
          get new_alumni_url
          assert_response :success
     end

     test 'should create alumni' do
          assert_difference('Alumni.count') do
               post alumnis_url,
                    params: {
                         alumni: {
                              alumniID: @alumni.alumniID,
                              email: @alumni.email,
                              name: @alumni.name,
                              organizationID: @alumni.organizationID
                         }
                    }
          end

          assert_redirected_to alumni_url(Alumni.last)
     end

     test 'should show alumni' do
          get alumni_url(@alumni)
          assert_response :success
     end

     test 'should get edit' do
          get edit_alumni_url(@alumni)
          assert_response :success
     end

     test 'should update alumni' do
          patch alumni_url(@alumni),
                params: { alumni: { alumniID: @alumni.alumniID, email: @alumni.email, name: @alumni.name, organizationID: @alumni.organizationID } }
          assert_redirected_to alumni_url(@alumni)
     end

     test 'should destroy alumni' do
          assert_difference('Alumni.count', -1) do
               delete alumni_url(@alumni)
          end

          assert_redirected_to alumnis_url
     end
end
