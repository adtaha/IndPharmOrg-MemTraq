class Speaker < ApplicationRecord
    validates :speakerID, presence: true
    validates :speakerName, :speakerEmail, :dateSpoke, presence: true
end
