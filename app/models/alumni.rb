class Alumni < ApplicationRecord
    validates :alumniID, :name, :email, :organizationID, presence: true
end
