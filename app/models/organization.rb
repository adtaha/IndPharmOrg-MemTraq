class Organization < ApplicationRecord
    validates :organizationID, :orgName, :email, presence: true
end
