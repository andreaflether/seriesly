class RegistrationsController < Devise::RegistrationsController
    layout "application", only: [:edit, :update]
    protected

    def after_update_path_for(resource)
        puts 'this is happening yoyo mama'
        flash[:notice] = "Conta atualizada com sucesso!"
        edit_user_registration_path
    end
end
