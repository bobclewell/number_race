# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :race do
    red_team "MyString"
    blue_team "MyString"
    winner "MyString"
  end
end
