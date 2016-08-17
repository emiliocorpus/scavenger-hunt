class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # POST /resource/sign_in
  def create
    user = User.find_by_email(params['email'])
    if user
      if user.password == params["password"]

      end
    else
      redirect_to root_path
    end
  end

  # DELETE /resource/sign_out
  def destroy
    if current_user
      sign_out current_user
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
