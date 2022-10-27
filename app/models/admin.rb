class Admin < ApplicationRecord 
    has_many :users  
    has_many :incidents, through: :users  
end
