require 'rails_helper'

RSpec.describe('organizations/index', type: :view) do
     before do
          assign(:organizations, [
               Organization.create!(
                    organizationID: 2,
                    name: 'Name',
                    email: 'Email'
               ),
               Organization.create!(
                    organizationID: 2,
                    name: 'Name',
                    email: 'Email'
               )
          ]
          )
     end

     it 'renders a list of organizations' do
          render
          assert_select 'tr>td', text: 2.to_s, count: 2
          assert_select 'tr>td', text: 'Name'.to_s, count: 2
          assert_select 'tr>td', text: 'Email'.to_s, count: 2
     end
end
