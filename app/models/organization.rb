class Organization < ApplicationRecord
    has_many :current_members, through: :member_orgs

    validates :organizationID, uniqueness: true, presence: true
    validates :name, :email, presence: true
end
