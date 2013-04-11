FactoryGirl.define do
  sequence :email do |n| 
    "user#{n}@ticketee.com" 
  end
  
  factory :user do
    email do
      FactoryGirl.generate :email
    end
    password "password"
    password_confirmation "password"
  end
end
