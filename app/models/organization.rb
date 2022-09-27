class Organization < ApplicationRecord
    validates :organizationID, :name, :email, presence: true
end
