require 'test_helper'

class CurrMembersControllerTest < ActionDispatch::IntegrationTest
     before do
          @curr_member = curr_members(:one)
     end

     test 'should get index' do
          get curr_members_url
          assert_response :success
     end

     test 'should get new' do
          get new_curr_member_url
          assert_response :success
     end

     test 'should create curr_member' do
          assert_difference('CurrMember.count') do
               post curr_members_url,
                    params: { curr_member: { email: @curr_member.email, name: @curr_member.name, studentID: @curr_member.studentID } }
          end

          assert_redirected_to curr_member_url(CurrMember.last)
     end

     test 'should show curr_member' do
          get curr_member_url(@curr_member)
          assert_response :success
     end

     test 'should get edit' do
          get edit_curr_member_url(@curr_member)
          assert_response :success
     end

     test 'should update curr_member' do
          patch curr_member_url(@curr_member),
                params: { curr_member: { email: @curr_member.email, name: @curr_member.name, studentID: @curr_member.studentID } }
          assert_redirected_to curr_member_url(@curr_member)
     end

     test 'should destroy curr_member' do
          assert_difference('CurrMember.count', -1) do
               delete curr_member_url(@curr_member)
          end

          assert_redirected_to curr_members_url
     end
end
