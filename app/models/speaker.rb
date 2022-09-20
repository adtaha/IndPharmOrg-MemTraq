class Speaker < ApplicationRecord
    validates :speakerID, :speakerName, :email, :organizationID, presence: true
end
