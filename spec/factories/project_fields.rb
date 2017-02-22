FactoryGirl.define do
  factory :project_field do
    name "MyString"
    field_type "MyString"
    unit "MyString"
    required false
    description "MyText"
    icon_data "MyText"
    association :project_type, factory: :project_type
  end
end
