class User < ApplicationRecord
    has_secure_password
    has_many :admins
    has_many :incidents, through: :admin
    
    validates :username, presence: true, uniqueness: true
end
