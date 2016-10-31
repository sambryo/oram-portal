class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	private
		def user_params
			if current_user
				if current_user.referrer?
					params[:user].permit(:approved, :rejected, :pending)
				end
			end
		end
end
