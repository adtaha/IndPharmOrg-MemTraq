require 'rails_helper'

RSpec.describe('member_orgs/show', type: :view) do
     before do
          @member_org = assign(:member_org, MemberOrg.create!(
                                                 memberOrgID: 1,
                                                 memberID: 1,
                                                 organizationID: 1
                                            )
          )
     end

     it 'renders attributes in <p>' do
          render
          expect(rendered).to(match(/1/))
          expect(rendered).to(match(/1/))
          expect(rendered).to(match(/1/))
     end
end
