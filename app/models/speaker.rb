class Speaker < ApplicationRecord
    validates :speakerID, uniqueness: true, presence: true
    validates :speakerName, :speakerEmail, :dateSpoke, presence: true
end
