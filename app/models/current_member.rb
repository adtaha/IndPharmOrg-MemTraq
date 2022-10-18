class CurrentMember < ApplicationRecord
    has_many :organizations, through: :member_orgs

    validates :memberID, :name, :email, presence: true
    validates_inclusion_of :isAdmin, :isAlumni, :in => [true, false]
end
