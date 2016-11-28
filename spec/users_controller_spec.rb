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

  it "should return the correct countries" do
    expect(subject.current_user.all_countries).to eq(CS.countries)
  end

  it "should return the correct languages" do
    expect(subject.current_user.client_languages).to eq(["English", "Arabic", "Persian/Farsi", "Turkish"])
  end

  it "should return the correct sex" do
    expect(subject.current_user.sex).to eq(["Male", "Female", "Intersex"])
  end

  it "should return the correct Turkey legal status" do
    expect(subject.current_user.turkey_legal_status).to eq(["Undocumented (no legal status)", "Legal Temporary Resident (Non-Citizen)", "Legal Long-Term Resident (Non-Citizen)", "Legal Citizen", "Unsure"])
  end

  it "should return the correct living situation" do
    expect(subject.current_user.living_situation).to eq(["Alone", "With a roommate(s)", "With a partner", "Unsure"])
  end

  it "should return the correct refugee claim" do
    expect(subject.current_user.refugee_claim).to eq(["Race",
              "Religion",
              "Ethnicity",
              "Political Opinion",
              "Membership to a Particular Social Group Non-LGBTI Related",
              "Membership to a Particular Social Group LGBTI Related",
              "Unsure"])
  end

  it "should return the correct answer" do
    expect(subject.current_user.yes_no_unsure).to eq(["Yes", "No", "Unsure"])
  end

  it "should return the correct sexual orientation" do
    expect(subject.current_user.sexual_orientation).to eq(["Heterosexual", "Gay", "Lesbian", "Bisexual", "Queer", "Asexual"])
  end

  it "should return the correct gender identity" do
    expect(subject.current_user.client_gender_identity).to eq(["Male", "Female", "Genderqueer", "Third Gender", "Unsure"])
  end

  it "should return the correct partner" do
    expect(subject.current_user.client_partner).to eq(["Yes, a same-sex partner", "Yes, an opposite-sex partner", "No", "Unsure"])
  end

  it "should return the correct openness" do
    expect(subject.current_user.client_openness).to eq(["Only their close friends?", "Only people they know?", "Society in general?", "Unsure"])
  end

  it "should return the correct dangers" do
    expect(subject.current_user.client_dangers).to eq(["Family Members in their Country of Origin",
              "Family Members in Turkey",
              "Teachers/Classmates in their Country of Origin",
              "Teachers/Classmates in Turkey",
              "Community Leaders in their Country of Origin",
              "Community Leaders in Turkey",
              "Religious Leaders in their Country of Origin",
              "Religious Leaders in Turkey",
              "State Officials in their Country of Origin",
              "State Officials in Turkey",
              "Co-Workers in their Country of Origin",
              "Co-Workers in Turkey",
              "Other Members of the Wider Society in their Country of Origin",
              "Other Members of the Wider Society in Turkey"])
  end

  it "should return the correct incident" do
    expect(subject.current_user.client_incident).to eq(["Isolated Incident", "Occurred Multiple Times", "Unsure"])
  end

  it "should return the correct mental illness" do
    expect(subject.current_user.mental_illness).to eq(["Depression", "Post Traumatic Stress Disorder", "Bipolar Disorder", "Other"])
  end

  it "should return the correct arrest" do
    expect(subject.current_user.arrest).to eq(["Police and Other Governmental Forces e.g. the Army.",
              "Non-State Paramilitary Groups",
              "Religious Figures",
              "Unsure"])
  end
  it "should return the correct evidence" do
    expect(subject.current_user.documentary_evidence).to eq(["Police Reports and Documentation Related to Court Cases",
              "Hospital Reports/ Medical Records",
              "Threat Letters",
              "Documentation of Injuries e.g. Photos",
              "Other"])
  end

  it "should return the correct no questionnaire relationships" do
    expect(subject.current_user.no_questionnaire_relationships).to eq(["Friend of a Friend", "Through Social Media e.g. Facebook, Twitter, Instagram etc.",
              "Through Social Dating Platforms e.g. Hornet, Manjam etc.", "Other"])
  end

  it "should return the correct yes questionnaire relationships" do
    expect(subject.current_user.yes_questionnaire_relationships).to eq(["Colleague",
              "Fellow Activist",
              "Co-worker",
              "Acquaintance",
              "Friend",
              "Close Friend",
              "Occasional Partner",
              "Boyfriend/Girlfriend",
              "Partner",
              "Former Partner",
              "Spouse"])
  end

  it "should return the correct professional capacity" do
    expect(subject.current_user.professional_capacity).to eq(["UNHCR", "ASAM", "DGMM", "Other"])
  end

  it "should return the correct relationship level" do
    expect(subject.current_user.relationship_level).to eq(["Very Good Friends", "Friends", "Acquaintances", "We Have Met Once"])
  end

end
