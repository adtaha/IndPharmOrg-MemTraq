require 'rails_helper'

RSpec.describe('current_members/show', type: :view) do
     before do
          @current_member = assign(:current_member, CurrentMember.create!(
                                                         memberID: '2',
                                                         name: 'Name',
                                                         email: 'Email',
                                                         isAdmin: false,
                                                         isAlumni: false
                                                    )
          )
     end

     it 'renders attributes in <p>' do
          render
          expect(rendered).to(match(/2/))
          expect(rendered).to(match(/Name/))
          expect(rendered).to(match(/Email/))
          expect(rendered).to(match(/false/))
          expect(rendered).to(match(/false/))
     end
end
