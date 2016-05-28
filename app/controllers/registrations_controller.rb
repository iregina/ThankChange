class RegistrationsController < Devise::RegistrationsController

  private

  def account_update_params
    params.require(:user).permit(:intro, :purpose, :interests, :ideal_world, :first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end