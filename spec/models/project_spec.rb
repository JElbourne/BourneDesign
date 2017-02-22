require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:project)).to be_valid
    end

    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:full_address) }
    it { should validate_presence_of(:project_type_id) }
  end

  describe "associations" do
    it { should belong_to(:project_type) }
  end
end
