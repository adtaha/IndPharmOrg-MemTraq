class Speaker < ApplicationRecord
    validates :speakerID, uniqueness: true, presence: true
    validates :speakerName, :speakerEmail, :organizationID, presence: true
end
