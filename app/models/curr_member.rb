class CurrMember < ApplicationRecord
    validates :studentID, :name, :email, presence: true
end
