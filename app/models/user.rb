class User < ApplicationRecord
    has_secure_password
    has_many :incidents, foreign_key: :user_id
    validates_presence_of :name, :username, :email, :password, :password_confirmation
    enum user_type: [:user, :admin]

   
    
    validates :username, presence: true, uniqueness: true
end
