class CurrentMember < ApplicationRecord
    validates :memberID, :name, :email, :isAdmin, :isAlumni, presence: true
end
