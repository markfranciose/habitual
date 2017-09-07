require 'rails_helper'

RSpec.describe RandomsController, type: :controller do
	let(:user) { User.create(user_identifier: '12345')}

	describe "POST #random" do
		context "valid input" do
			xit "returns status code 201" do
      	post :random, { habit: {user_id: 1, reminder_time: Time.now, reminder_frequency: 1, name: "drink more water"}} 
				expect(response).to have_http_status 201
			end

			xit "" do
			end
		end

		context "invalid input" do
			xit "returns status code 422" do
				# post :
			end

			xit "returns a json object with errors" do
			end
		end

	end



end