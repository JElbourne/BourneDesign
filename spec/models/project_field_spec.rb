require 'rails_helper'

RSpec.describe ProjectField, type: :model do
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:project_field)).to be_valid
    end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:field_type) }
    it { should validate_presence_of(:unit) }
    it { should validate_presence_of(:project_type_id) }
  end

  describe "associations" do
    it { should belong_to(:project_type) }
  end
end
