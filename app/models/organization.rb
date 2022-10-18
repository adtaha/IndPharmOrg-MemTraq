class Organization < ApplicationRecord
    has_many :current_members, through: :member_orgs

    validates :organizationID, :name, :email, presence: true
end
