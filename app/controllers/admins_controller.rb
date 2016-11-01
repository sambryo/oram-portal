class AdminsController < ApplicationController
	def show_referrers
		@referrers = User.with_role :referrer
		render :show_referrers
	end

	def show_referrer_profile
		@referrer = User.find_by_id(params[:id])
		render :referrer_profile
	end
	
	def mark_referrer_status
		id = params[:id]
		status = params[:status]
		# status = "Approved"
		@referrer = User.find_by_id(id)
		@referrer.status = status
		@referrer.save
		redirect_to referrers_path
	end

	def show
		@user = Admin.find_by_id(params[:id])
	end
end
