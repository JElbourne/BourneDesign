FactoryGirl.define do
  factory :attachment do
    attachment_data "MyText"
    association :project, factory: :project
  end
end
