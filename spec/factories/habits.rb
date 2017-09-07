FactoryGirl.define do
	factory :habit do
		association :user
		name "Drink more water"
		active true
		reminder_frequency 2
		reminder_time Time.now
	end
end