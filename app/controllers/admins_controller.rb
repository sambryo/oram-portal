class AdminsController < ApplicationController
	def show_referrers
		@referrers = User.with_role(:referrer)
		if params[:status] and params[:status] != 'Status'
			@referrers = @referrers.where(status: params[:status]).all
		end
		@status = params[:status]
		render :show_referrers
	end

	def show_referrer_profile
		@referrer = User.find_by_id(params[:id])
		render :referrer_profile
	end
	
	def mark_referrer_status
		id = params[:id]
		status = params[:status]
		@referrer = User.find_by_id(id)
		@referrer.status = status
		@referrer.save
		flash[:notice] = "#{@referrer.first_name} #{@referrer.last_name} has been marked as #{@referrer.status.downcase}"
		redirect_to referrers_path
	end

	def show
		@user = Admin.find_by_id(params[:id])
	end
end
