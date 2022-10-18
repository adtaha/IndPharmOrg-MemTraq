class Organization < ApplicationRecord
    validates :organizationID, uniqueness: true, presence: true
    validates :name, :email, presence: true
end
