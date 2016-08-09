class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :nickname)
  end
  def account_update_params
    params.require(:user).permit(:password, :password_confirmation, :current_password, :nickname ,
              :name, :phone_number,:introduction , :skills, :address, :brand, :brand_number, :profile_image_url,
              :facebook_id, :twitter_id, :instagram_id )
  end
end
