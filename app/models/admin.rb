class Admin < ApplicationRecord 
    include ActiveModel::Serialization
    has_secure_password
    has_many :users  
    has_many :incidents, through: :users  
end
