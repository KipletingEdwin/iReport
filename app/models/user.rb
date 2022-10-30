class User < ApplicationRecord
    has_secure_password
    has_many :incidents, foreign_key: :user_id
    enum user_type: [:user, :admin]

    # after_initialize :init

    # def init
    #   self.isAdmin = false unless isAdmin
    # end
    
    validates :username, presence: true, uniqueness: true
end
