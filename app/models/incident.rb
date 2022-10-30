class Incident < ApplicationRecord
    belongs_to :user
    validates_presence_of :incident_type, :title, :description, :location, :date, :image_url, :status
    
    validates_acceptance_of :incident_type, :accept => ['redflag', 'intervention']
end
