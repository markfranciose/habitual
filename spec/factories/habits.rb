FactoryGirl.define do
	factory :habit do
		firstname "John"
		lastname "Doe"
		sequence(:email) {|n| "johndoe#{n}@example.com"}
	end
end