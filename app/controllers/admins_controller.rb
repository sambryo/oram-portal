class AdminsController < ApplicationController

	before_filter :authenticate_admin!

	def show_referrers
		@referrers = User.where(role: User.roles[:referrer]).where.not(invitation_accepted_at: nil)
		if params[:status] and params[:status] != 'Status'
			@referrers = @referrers.where(status: params[:status]).all
		end
		@status = params[:status]
		render :show_referrers
	end

	def show_clients
		@clients = User.where(role: User.roles[:client]).where.not(invitation_accepted_at: nil).order("created_at DESC")
		if params[:status] and params[:status] != 'Status'
			@clients = @clients.where(status: params[:status]).all
		end
		@status = params[:status]
		render :show_clients
	end

	def mark_referrer_status
		id = params[:id]
		status = params[:status]
		@referrer = User.find_by_id(id)
		@referrer.status = status
		@referrer.save
		flash[:notice] = "#{@referrer.first_name} #{@referrer.last_name} has been marked as #{@referrer.status.downcase}"
		if status == "Incomplete"
			# send notification to them via email
			NotifierMailer.incomplete_referrer_profile(@referrer).deliver_now # sends the email
		end
		redirect_to referrers_path
	end

	def show
		@user = Admin.find_by_id(params[:id])
	end
end
