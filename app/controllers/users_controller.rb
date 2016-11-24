class UsersController < ApplicationController
	before_action :require_login

	def show
		@user = User.find(params[:id])
		@form_hash = {}
		if @user.role == "referrer"
			if !@user.forms.empty?
				@form_hash = JSON.parse(@user.forms.first.form_json)
			end
			render :referrer_profile
		end
	end

	def edit_referrer_profile
		@referrer = User.find_by_id(params[:id])
		render :referrer_edit
	end

	def update_referrer_profile
		@form_response = params["form_response"].to_json
		# @form_type = params[:form_type]
		@form_type = 1
		@user = User.find_by_id(params[:id])
		@user_form = @user.forms.where(form_type: @form_type).first
		if !@user_form
			@user_form = @user.forms.build({form_json: @form_response, form_type: @form_type})
		else
			@user_form.update_attribute(:form_json, @form_response)
		end
		if @user_form.save
			redirect_to referrer_path(@user) and return
		end
		flash[:error] = "Form failed to save"
		redirect_to root_path
	end

	def referrals
	end

	def refer_client
	end

	private
		def user_params
			if current_user
				if current_user.referrer?
					params[:user].permit(:status)
				end
			end
		end

		def require_login
			if current_user
				if current_user.id != params[:id].to_i
					flash[:error] = "You are not currently logged in to have access to this section"
	      	redirect_to root_path and return
				end
				return
			end
			if !current_admin
				flash[:error] = "You are not currently logged in to have access to this section"
	      redirect_to root_path
			end
		end

end
