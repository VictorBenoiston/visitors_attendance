# registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
    before_action :authenticate_admin!, only: [:new]
    skip_before_action :require_no_authentication, only: [:new]

    def authenticate_admin!
        unless current_user && current_user.administrador? # Substitua 'administrador?' pelo método correto que verifica se o usuário é um administrador
          redirect_to root_path, alert: "Você não tem permissão para acessar esta página."
        end
      end
      
    def new
        super
    end
  
  end
