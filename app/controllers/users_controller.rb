class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		if @user.has_role? :referrer
			render :referrer_profile
		end
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
