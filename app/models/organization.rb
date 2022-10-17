class Organization < ApplicationRecord
    validates :organizationID, uniqueness: true, presence: true
    validates :organizationName, :organizationEmail, presence: true
end
