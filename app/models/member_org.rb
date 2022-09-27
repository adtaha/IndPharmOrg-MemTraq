class MemberOrg < ApplicationRecord
    belongs_to :current_member
    belongs_to :organization
end
