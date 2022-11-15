require 'rails_helper'

RSpec.describe('speakers/index', type: :view) do
     before do
          assign(:speakers, [
               Speaker.create!(
                    speakerID: 2,
                    speakerName: 'Speaker Name',
                    speakerEmail: 'Speaker Email',
                    organizationName: 'Organization Name',
                    speakerWebsite: 'Speaker Website'
               ),
               Speaker.create!(
                    speakerID: 2,
                    speakerName: 'Speaker Name',
                    speakerEmail: 'Speaker Email',
                    organizationName: 'Organization Name',
                    speakerWebsite: 'Speaker Website'
               )
          ]
          )
     end

     it 'renders a list of speakers' do
          render
          assert_select 'tr>td', text: 2.to_s, count: 2
          assert_select 'tr>td', text: 'Speaker Name'.to_s, count: 2
          assert_select 'tr>td', text: 'Speaker Email'.to_s, count: 2
          assert_select 'tr>td', text: 'Organization Name'.to_s, count: 2
          assert_select 'tr>td', text: 'Speaker Website'.to_s, count: 2
     end
end
