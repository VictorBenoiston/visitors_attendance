# class UsersController < ApplicationController
#     before_action :authenticate_user!
#     before_action :check_admin_permissions, only: [:new, :create]
#     prepend_before_filter :require_no_authentication, only: [:new, :create, :cancel]


#     def new
#       @user = User.new
#     end
  
#     def create
#       @user = User.new(user_params)
#       if @user.save
#         redirect_to root_path, notice: 'Usuário criado com sucesso.'
#       else
#         render :new
#       end
#     end
  
#     private
  
#     def user_params
#       params.require(:user).permit(:email, :password, :password_confirmation, :role)
#     end
  
#     def check_admin_permissions
#       unless current_user.admin?
#         redirect_to root_path, alert: "Você não tem permissão para criar novos usuários."
#       end
#     end
#   end
