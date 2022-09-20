class Administrator < ApplicationRecord
    validates :adminID, :name, :email, :role, presence: true
end
