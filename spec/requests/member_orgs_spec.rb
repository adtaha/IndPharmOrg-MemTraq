require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe('/member_orgs', type: :request) do
     # MemberOrg. As you add validations to MemberOrg, be sure to
     # adjust the attributes here as well.
     let(:valid_attributes) do
          skip('Add a hash of attributes valid for your model')
     end

     let(:invalid_attributes) do
          skip('Add a hash of attributes invalid for your model')
     end

     describe 'GET /index' do
          it 'renders a successful response' do
               MemberOrg.create!(valid_attributes)
               get member_orgs_url
               expect(response).to(be_successful)
          end
     end

     describe 'GET /show' do
          it 'renders a successful response' do
               member_org = MemberOrg.create!(valid_attributes)
               get member_org_url(member_org)
               expect(response).to(be_successful)
          end
     end

     describe 'GET /new' do
          it 'renders a successful response' do
               get new_member_org_url
               expect(response).to(be_successful)
          end
     end

     describe 'GET /edit' do
          it 'render a successful response' do
               member_org = MemberOrg.create!(valid_attributes)
               get edit_member_org_url(member_org)
               expect(response).to(be_successful)
          end
     end

     describe 'POST /create' do
          context 'with valid parameters' do
               it 'creates a new MemberOrg' do
                    expect do
                         post(member_orgs_url, params: { member_org: valid_attributes })
                    end.to(change(MemberOrg, :count).by(1))
               end

               it 'redirects to the created member_org' do
                    post member_orgs_url, params: { member_org: valid_attributes }
                    expect(response).to(redirect_to(member_org_url(MemberOrg.last)))
               end
          end

          context 'with invalid parameters' do
               it 'does not create a new MemberOrg' do
                    expect do
                         post(member_orgs_url, params: { member_org: invalid_attributes })
                    end.to(change(MemberOrg, :count).by(0))
               end

               it "renders a successful response (i.e. to display the 'new' template)" do
                    post member_orgs_url, params: { member_org: invalid_attributes }
                    expect(response).to(be_successful)
               end
          end
     end

     describe 'PATCH /update' do
          context 'with valid parameters' do
               let(:new_attributes) do
                    skip('Add a hash of attributes valid for your model')
               end

               it 'updates the requested member_org' do
                    member_org = MemberOrg.create!(valid_attributes)
                    patch member_org_url(member_org), params: { member_org: new_attributes }
                    member_org.reload
                    skip('Add assertions for updated state')
               end

               it 'redirects to the member_org' do
                    member_org = MemberOrg.create!(valid_attributes)
                    patch member_org_url(member_org), params: { member_org: new_attributes }
                    member_org.reload
                    expect(response).to(redirect_to(member_org_url(member_org)))
               end
          end

          context 'with invalid parameters' do
               it "renders a successful response (i.e. to display the 'edit' template)" do
                    member_org = MemberOrg.create!(valid_attributes)
                    patch member_org_url(member_org), params: { member_org: invalid_attributes }
                    expect(response).to(be_successful)
               end
          end
     end

     describe 'DELETE /destroy' do
          it 'destroys the requested member_org' do
               member_org = MemberOrg.create!(valid_attributes)
               expect do
                    delete(member_org_url(member_org))
               end.to(change(MemberOrg, :count).by(-1))
          end

          it 'redirects to the member_orgs list' do
               member_org = MemberOrg.create!(valid_attributes)
               delete member_org_url(member_org)
               expect(response).to(redirect_to(member_orgs_url))
          end
     end
end
