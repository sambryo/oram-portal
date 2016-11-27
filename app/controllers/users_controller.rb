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
		@gender_identity_options = @referrer.gender_identity_options
		@referrer_contact_options = @referrer.referrer_contact_options
		@referrer_LGBTIQ_social_media = @referrer.referrer_LGBTI_social_media
		@referrer_LBGTIQ = @referrer.LGBTIQ_options
		render :referrer_edit
	end

	def update_referrer_profile
		if params["form_response"]["Nationality"]
			country = ISO3166::Country[params["form_response"]["Nationality"]]
			params["form_response"]["Nationality"] = country.name
		end
		@form_response = params["form_response"].to_json
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
		referrer = User.find_by_id(current_user.id)
		@clients = referrer.clients
		render "referrals"
	end

	def refer_client
		@referrer = User.find_by_id(params[:id])
		@gender_identity_options = @referrer.gender_identity_options
		@referrer_contact_options = @referrer.referrer_contact_options
		@referrer_LGBTIQ_social_media = @referrer.referrer_LGBTI_social_media
		@referrer_LBGTIQ = @referrer.LGBTIQ_options
		@client_languages = @referrer.client_languages
		@sex = @referrer.sex
		@yes_no_unsure = @referrer.yes_no_unsure
		@sexual_orientiation = @referrer.sexual_orientiation
		@client_gender_identity = @referrer.client_gender_identity
		@client_partner = @referrer.client_partner
		@client_openness = @referrer.client_openness
		@client_dangers = @referrer.client_dangers
		@client_incident = @referrer.client_incident
		@mental_illness = @referrer.mental_illness
		@arrest = @referrer.arrest
		@documentary_evidence = @referrer.documentary_evidence
		@no_questionnaire_relationships = @referrer.no_questionnaire_relationships
		@yes_questionnaire_relationships = @referrer.yes_questionnaire_relationships
		@professional_capacity = @referrer.professional_capacity
		@relationship_level = @referrer.relationship_level
		@turkey_legal_status = @referrer.turkey_legal_status
		@living_situation = @referrer.living_situation
		@refugee_claim = @referrer.refugee_claim
		render :refer_client
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
