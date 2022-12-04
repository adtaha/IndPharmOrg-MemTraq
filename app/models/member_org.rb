class MemberOrg < ApplicationRecord
     belongs_to :current_member, foreign_key: "memberID"
     belongs_to :organization, foreign_key: "organizationID"

     validates :memberOrgID, presence: true
end
