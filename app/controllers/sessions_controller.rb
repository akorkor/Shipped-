class SessionsController < Devise::SessionsController
  before_action :show_session_cont

  def show_session_cont
    puts "******* show_session_cont *******"
  end
end
