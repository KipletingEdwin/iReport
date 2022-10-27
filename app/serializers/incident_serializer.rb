class IncidentSerializer < ActiveModel::Serializer
  
  attributes :id, :incident_type, :title, :description, :location, :date, :image_url, :status
  
end
