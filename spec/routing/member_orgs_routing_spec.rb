require 'rails_helper'

RSpec.describe(MemberOrgsController, type: :routing) do
     describe 'routing' do
          it 'routes to #index' do
               expect(get: '/member_orgs').to(route_to('member_orgs#index'))
          end

          it 'routes to #new' do
               expect(get: '/member_orgs/new').to(route_to('member_orgs#new'))
          end

          it 'routes to #show' do
               expect(get: '/member_orgs/1').to(route_to('member_orgs#show', id: '1'))
          end

          it 'routes to #edit' do
               expect(get: '/member_orgs/1/edit').to(route_to('member_orgs#edit', id: '1'))
          end

          it 'routes to #create' do
               expect(post: '/member_orgs').to(route_to('member_orgs#create'))
          end

          it 'routes to #update via PUT' do
               expect(put: '/member_orgs/1').to(route_to('member_orgs#update', id: '1'))
          end

          it 'routes to #update via PATCH' do
               expect(patch: '/member_orgs/1').to(route_to('member_orgs#update', id: '1'))
          end

          it 'routes to #destroy' do
               expect(delete: '/member_orgs/1').to(route_to('member_orgs#destroy', id: '1'))
          end
     end
end
