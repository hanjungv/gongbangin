class RegistrationsController < Devise::RegistrationsController


  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :phone_number, :address,:introduce ,:brand, :brand_number)
  end
  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :phone_number,:introduce ,:address, :brand, :brand_number)
  end
end
