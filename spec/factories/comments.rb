# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    commenter "MyString"
    body "MyText"
    post
  end
end
