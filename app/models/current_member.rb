class CurrentMember < ApplicationRecord
     # Include default devise modules. Others available are:
     # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

     devise :omniauthable, omniauth_providers: [:google_oauth2]
     has_many :organizations, through: :member_orgs


     # validates :memberID, :name, :email, presence: true
     # validates :isAdmin, :isAlumni, inclusion: { in: [true, false] }
     
     def self.from_google(email:, name:, uid:, avatar_url:)
          return nil unless email =~ /@tamu.edu\z/
          create_with(uid: uid, name: name, avatar_url: avatar_url).find_or_create_by!(email: email)
     end
end
