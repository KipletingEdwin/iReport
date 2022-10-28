class AdminsController < ApplicationController
  skip_before_action :authorized
    def index
        admins = Admin.all
        render json: admins, status: :ok
    end
    # def create
    #     @admin = Admin.new(admin_params)
    
    #     respond_to do |format|
    #       if @admin.save
    #         format.json { render :show, status: :created }
    #       else
    #         format.json { render json: @admin.errors, status: :unprocessable_entity }
    #       end
    #     end
    #   end

    def create
      @admin = Admin.create(admin_params)
      if @admin.valid?
        @token = encode_token({admin_id: @admin.id})
        render json: { admin: AdminSerializer.new(@admin), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create admin' }, status: :unprocessable_entity
      end
    end


    
      def update
        respond_to do |format|
        admin = Admin.find_by(id: params[:id])
          if admin
            admin.update(admin_params)
            format.json { render json: admin, status: :ok}
          else
            
            format.json { render json: @admin.errors, status: :unprocessable_entity }
          end
        end
      end
    
      def destroy
        @admin.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end
    
      private
    def admin_params
        params.require(:admins).permit(:username, :password, :password_confirmation)
    end
      def check_if_admin
        redirect_to root_path unless current_user.is_admin?
      end
    
      # Use callbacks to share common setup or constraints between actions.
      def set_admin
        @admin = Admin.find(params[:id])
      end
end
