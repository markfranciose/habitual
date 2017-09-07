FactoryGirl.define do
	factory :user do
		name "Rick Swan"
		sequence(:user_identifier) {|n| "#{n}"}
	end
end