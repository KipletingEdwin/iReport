class IncidentsController < ApplicationController
    #rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # skip_before_action :authorize, only: :index
    
    def index
        incidents = Incident.all
        render json: incidents, status: :ok
    end

    def create
        incident = Incident.create!(incident_params)
        render json: incident, status: :created
    end

    def show
        incident = find_incident
        render json: incident
    end

    def update
        incident = find_incident
        incident.update!(incident_params)
        render json: incident, status: :ok
    end

    def destroy
        incident = find_incident
        incident.destroy
        head :no_content
    end

    private

    def find_incident
        Incident.find(params[:id])
    end

    def incident_params
        params.permit(:incident_type, :title, :description, :location, :date , :image_url, :status, :user_id)
    end

    # def render_not_found_response
    #     render json: { error: "Incident not found" }, status: :not_found
    # end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
