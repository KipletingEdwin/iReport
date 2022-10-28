class Admin < ApplicationRecord 
    has_secure_password
    has_many :users  
    has_many :incidents, through: :users  
end
