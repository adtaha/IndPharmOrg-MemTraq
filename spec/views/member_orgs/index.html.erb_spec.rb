require 'rails_helper'

RSpec.describe('member_orgs/index', type: :view) do
     before do
          assign(:member_orgs, [
               MemberOrg.create!(
                    memberOrgID: 1,
                    memberID: 1,
                    organizationID: 1
               )
          ]
          )
     end

     it 'renders a list of member_orgs' do
          render
          assert_select 'tr>td', text: 1.to_s, count: 2
          assert_select 'tr>td', text: 1.to_s, count: 2
          assert_select 'tr>td', text: 1.to_s, count: 2
     end
end
