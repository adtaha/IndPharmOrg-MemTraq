class Speaker < ApplicationRecord
    validates :speakerID, :name, :email, :organizationID, presence: true
end
