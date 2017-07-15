class WelcomeController < ApplicationController
  def index
    @user = current_user if user_signed_in?
    @admin = current_admin if admin_signed_in?
  end
end
