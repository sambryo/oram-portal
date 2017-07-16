class FormsController < ApplicationController
  def show
    @curr_admin = current_admin
    @form = Form.find(params[:id])
		@form_hash = JSON.parse(@form.form_json)
  end

end
