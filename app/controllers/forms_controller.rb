class FormsController < ApplicationController
  def show
    @form = Form.find(params[:id])
		@form_hash = JSON.parse(@form.form_json)
  end

end
