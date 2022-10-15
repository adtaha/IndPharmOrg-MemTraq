class CurrentMember < ApplicationRecord
    validates :memberID, :name, :email, :isAdmin, :isAlumni, presence: true

    # has_secure_password

    def self.from_omniauth(response)
        CurrentMember.find_or_create_by(memberID: response[:uid]) do |u|
            u.name = response[:info][:name]
            u.email = response[:info][:email]
            # u.password = SecureRandom.hex(15)
        end
    end
end
