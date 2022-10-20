require 'rails_helper'

RSpec.describe('member_orgs/new', type: :view) do
     before do
          assign(:member_org, MemberOrg.new(
                                   memberOrgID: 1,
                                   memberID: 1,
                                   organizationID: 1
                              )
          )
     end

     it 'renders new member_org form' do
          render

          assert_select 'form[action=?][method=?]', member_orgs_path, 'post' do
               assert_select 'input[name=?]', 'member_org[memberOrgID]'

               assert_select 'input[name=?]', 'member_org[memberID]'

               assert_select 'input[name=?]', 'member_org[organizationID]'
          end
     end
end
