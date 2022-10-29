class AuthadminsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @admin = Admin.find_by(username: admin_params[:username])
        #User#authenticate comes from BCrypt
        if @admin && @admin.authenticate(admin_params[:password])
          # encode token comes from ApplicationController
          token = encode_token({ user_id: @admin.id })
          render json: { user: AdminSerializer.new(@admin), jwt: token }, status: :accepted
        else
          render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
      end

      private
      def admin_params
          params.require(:admins).permit(:username, :password, :password_confirmation)
      end
end
