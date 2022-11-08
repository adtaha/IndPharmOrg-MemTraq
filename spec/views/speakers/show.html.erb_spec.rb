require 'rails_helper'

RSpec.describe('speakers/show', type: :view) do
     before do
          @speaker = assign(:speaker, Speaker.create!(
                                           speakerID: 2,
                                           speakerName: 'Speaker Name',
                                           speakerEmail: 'Speaker Email',
                                           organizationName: 'Organization Name',
                                           speakerWebsite: 'Speaker Website'
                                      )
          )
     end

     it 'renders attributes in <p>' do
          render
          expect(rendered).to(match(/2/))
          expect(rendered).to(match(/Speaker Name/))
          expect(rendered).to(match(/Speaker Email/))
          expect(rendered).to(match(/Organization Name/))
          expect(rendered).to(match(/Speaker Website/))
     end
end
