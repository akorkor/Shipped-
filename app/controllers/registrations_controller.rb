class RegistrationsController < Devise::RegistrationsController
  before_action :show_reg_cont

  def show_reg_cont
    puts "******* show_reg_cont *******"
  end

  private
  def sign_up_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password,
		 :password_confirmation)
  end
  def account_update_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password,
		 :password_confirmation, :current_password)
  end
end
