require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user1 = User.create(email: "u1@email.com", first_name: "user", last_name: "one", role: "referrer")
  end

  it "should return the correct countries" do
    expect(@user1.all_countries).to eq(CS.countries)
  end

  it "should return the correct languages" do
    expect(@user1.client_languages).to eq(["English", "Arabic", "Persian/Farsi", "Turkish"])
  end

  it "should return the correct sex" do
    expect(@user1.sex).to eq(["Male", "Female", "Intersex"])
  end

  it "should return the correct Turkey legal status" do
    expect(@user1.turkey_legal_status).to eq(["Undocumented (no legal status)", "Legal Temporary Resident (Non-Citizen)", "Legal Long-Term Resident (Non-Citizen)", "Legal Citizen", "Unsure"])
  end

  it "should return the correct living situation" do
    expect(@user1.living_situation).to eq(["Alone", "With a roommate(s)", "With a partner", "Unsure"])
  end

  it "should return the correct refugee claim" do
    expect(@user1.refugee_claim).to eq(["Race",
              "Religion",
              "Ethnicity",
              "Political Opinion",
              "Membership to a Particular Social Group Non-LGBTI Related",
              "Membership to a Particular Social Group LGBTI Related",
              "Unsure"])
  end

  it "should return the correct answer" do
    expect(@user1.yes_no_unsure).to eq(["Yes", "No", "Unsure"])
  end

  it "should return the correct sexual orientation" do
    expect(@user1.sexual_orientation).to eq(["Heterosexual", "Gay", "Lesbian", "Bisexual", "Queer", "Asexual"])
  end

  it "should return the correct gender identity" do
    expect(@user1.client_gender_identity).to eq(["Male", "Female", "Genderqueer", "Third Gender", "Unsure"])
  end

  it "should return the correct partner" do
    expect(@user1.client_partner).to eq(["Yes, a same-sex partner", "Yes, an opposite-sex partner", "No", "Unsure"])
  end

  it "should return the correct openness" do
    expect(@user1.client_openness).to eq(["Only their close friends?", "Only people they know?", "Society in general?", "Unsure"])
  end

  it "should return the correct dangers" do
    expect(@user1.client_dangers).to eq(["Family Members in their Country of Origin",
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
    expect(@user1.client_incident).to eq(["Isolated Incident", "Occurred Multiple Times", "Unsure"])
  end

  it "should return the correct mental illness" do
    expect(@user1.mental_illness).to eq(["Depression", "Post Traumatic Stress Disorder", "Bipolar Disorder", "Other"])
  end

  it "should return the correct arrest" do
    expect(@user1.arrest).to eq(["Police and Other Governmental Forces e.g. the Army.",
              "Non-State Paramilitary Groups",
              "Religious Figures",
              "Unsure"])
  end
  it "should return the correct evidence" do
    expect(@user1.documentary_evidence).to eq(["Police Reports and Documentation Related to Court Cases",
              "Hospital Reports/ Medical Records",
              "Threat Letters",
              "Documentation of Injuries e.g. Photos",
              "Other"])
  end

  it "should return the correct no questionnaire relationships" do
    expect(@user1.no_questionnaire_relationships).to eq(["Friend of a Friend", "Through Social Media e.g. Facebook, Twitter, Instagram etc.",
              "Through Social Dating Platforms e.g. Hornet, Manjam etc.", "Other"])
  end

  it "should return the correct yes questionnaire relationships" do
    expect(@user1.yes_questionnaire_relationships).to eq(["Colleague",
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
    expect(@user1.professional_capacity).to eq(["UNHCR", "ASAM", "DGMM", "Other"])
  end

  it "should return the correct relationship level" do
    expect(@user1.relationship_level).to eq(["Very Good Friends", "Friends", "Acquaintances", "We Have Met Once"])
  end

end
