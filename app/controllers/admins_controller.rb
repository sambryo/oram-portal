class AdminsController < ApplicationController
  def show
		@user = Admin.find(params[:id])
	end
end
