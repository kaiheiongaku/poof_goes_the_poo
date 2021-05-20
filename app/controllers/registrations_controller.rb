class RegistrationsController < Devise::RegistrationsController

  private

  def signup_params
    params.require(:user).permit( :first_name,
                                  :last_name,
                                  :email,
                                  :password,
                                  :password_confirmation,
                                  :street_address,
                                  :state,
                                  :zip,
                                  :phone_number )
  end

  def account_update_params
    params.require(:user).permit( :first_name,
                                  :last_name,
                                  :email,
                                  :password,
                                  :password_confirmation,
                                  :current_password,
                                  :street_address,
                                  :state,
                                  :zip,
                                  :phone_number )
  end
end
