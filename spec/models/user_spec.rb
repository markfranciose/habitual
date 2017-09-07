require 'rails_helper'

RSpec.describe User, type: :model do

  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  describe "attributes" do
    it "has a readable user_identifier" do
      user = User.new(user_identifier: "12345")
      expect(user.user_identifier).to eq '12345'
    end
  end

  describe "validations" do
    it "is is invalid without an identifier" do
      user = User.new
      expect(user).not_to be_valid
    end
  end

end