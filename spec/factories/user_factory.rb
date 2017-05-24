FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com"}

  factory :user do
    email
    password "GrumpyCat191"
    first_name "Tardar"
    last_name "Sauce"
    admin false
  end

  factory :admin, class: User do
    email
    password "bikeberlinadmin333"
    admin true
    first_name "Admin"
    last_name "User"
  end
end
