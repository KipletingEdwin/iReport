class AdminsController < ApplicationController
  
  skip_before_action :authorized
    def index
        admins = Admin.all
        render json: admins, status: :ok
    end


    def profile
      render json: { admin: AdminSerializer.new(current_user) }, status: :accepted
    end
   

    def create
      @admin = Admin.create(admin_params)
      if @admin.valid?
        @token = encode_token({admin_id: @admin.id})
        render json: { admin: AdminSerializer.new(@admin), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create admin' }, status: :unprocessable_entity
      end
    end

    # def create
    #   @admin = Admin.find_by(username: admin_params[:username])
    #   #User#authenticate comes from BCrypt
    #   if @admin && @admin.authenticate(admin_params[:password])
    #     # encode token comes from ApplicationController
    #     token = encode_token({ user_id: @admin.id })
    #     render json: { user: AdminSerializer.new(@admin), jwt: token }, status: :accepted
    #   else
    #     render json: { message: 'Invalid username or password' }, status: :unauthorized
    #   end
    # end


    
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
