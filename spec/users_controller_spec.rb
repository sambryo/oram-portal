require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  login_user
  # before(:each) do
  #   @user1 = User.create(email: "u1@email.com", first_name: "user", last_name: "one", status: "Incomplete")
  #   @user1.add_role :referrer
  # end
  it "should have a current_user" do
    # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
    expect(subject.current_user).to_not eq(nil)
  end

  it "should not allow users to see other user profiles" do
    get :edit_referrer_profile, {:id => '4'}
    expect(response).to redirect_to(root_path)
  end

end
