class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		if @user.has_role? :referrer
			@form_hash = JSON.parse(@user.formJSON)
			render :referrer_profile
		end
	end

	def edit_referrer_profile
		@referrer = User.find_by_id(params[:id])
		render :referrer_edit
	end

	def update_referrer_profile
		form_response = params["form_response"].to_json
		User.find_by_id(params[:id]).update_attribute("formJSON", form_response)
		redirect_to referrer_path(params[:id])
	end

	private
		def user_params
			if current_user
				if current_user.referrer?
					params[:user].permit(:status)
				end
			end
		end
end
