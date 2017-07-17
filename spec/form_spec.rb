require 'rails_helper'

RSpec.describe Form, type: :model do
  it "gets the form hash" do
    @form = Form.create
    expect(@form.getFormHash).to be_nil
  end
end