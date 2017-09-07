require 'rails_helper'

RSpec.describe HabitsController, type: :controller do

  let!(:user) { User.create!(user_identifier: '12345') }

  describe 'GET#show' do
    it "does a thing" do
      habit = create(:habit)
      get :show, params: habit #this is the problem
      expect(assigns(:habit)).to eq habit
    end
  end

  describe '#create' do

    context "when the habit is invalid" do

      xit "returns a status code of 422" do
        post :create, params: { habit: {reminder_frequency: 1}}
        expect(response.status).to eq 422
      end

      xit "returns a json object with errors in response body" do
        post :create, params: { habit: { reminder_frequency: 3 } }
        expect(JSON.parse(response.body)['name']).to eq ["can't be blank"]
      end

    end

    context "when the habit is valid" do

      xit "returns a status code of 201" do
        post :create, params: { habit: { name: "walk the dog", reminder_frequency: 3, reminder_time: Time.now }, user_identifier: '12345' }
        expect(response.status).to eq 201
      end

      xit "returns a json object with the habit in response body" do
        post :create, params: { habit: { name: "walk the dog", reminder_frequency: 3, reminder_time: Time.now }, user_identifier: '12345' }
        expect(JSON.parse(response.body)['id']).to_not be nil
      end

    end
  end

end
