FactoryGirl.define do
  factory :user do
    name                  "alice"
    email                 "alice@dev.local"
    password              "hogefuga"
    password_confirmation "hogefuga"
  end
end
