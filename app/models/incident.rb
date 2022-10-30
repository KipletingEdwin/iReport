class Incident < ApplicationRecord
    belongs_to :user
    # belongs_to :admin
    validates_acceptance_of :incident_type, :accept => ['redflag', 'intervention']
end
