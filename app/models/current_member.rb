class CurrentMember < ApplicationRecord
     has_many :organizations, through: :member_orgs

     validates :memberID, :name, :email, presence: true
     validates :isAdmin, :isAlumni, inclusion: { in: [true, false] }
end
