class CurrentMember < ApplicationRecord
    has_many :organizations, through: :member_orgs

    validates :memberID, :name, :email, presence: true
    validates_inclusion_of :isAdmin, :isAlumni, :in => [true, false]

    def self.from_omniauth(response)
        CurrentMember.find_or_create_by(memberID: response[:uid]) do |u|
            u.name = response[:info][:name]
            u.email = response[:info][:email]
            u.token = response[:info][:token]
            u.refresh_token = response[:info][:refresh_token]
            u.oauth_expires_at = response[:info][:oauth_expires_at]
        end
    end
end
