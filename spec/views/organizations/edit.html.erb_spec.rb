require 'rails_helper'

RSpec.describe('organizations/edit', type: :view) do
     before do
          @organization = assign(:organization, Organization.create!(
                                                     organizationID: 1,
                                                     name: 'MyString',
                                                     email: 'MyString'
                                                )
          )
     end

     it 'renders the edit organization form' do
          render

          assert_select 'form[action=?][method=?]', organization_path(@organization), 'post' do
               assert_select 'input[name=?]', 'organization[organizationID]'

               assert_select 'input[name=?]', 'organization[name]'

               assert_select 'input[name=?]', 'organization[email]'
          end
     end
end
