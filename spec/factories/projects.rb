FactoryGirl.define do
  factory :project do
    full_name "MyString"
    email "MyString"
    phone "5555555555"
    full_address "MyString"
    properties ""
    description "MyText"
    association :project_type, factory: :project_type
  end
end
