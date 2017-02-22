require 'rails_helper'

RSpec.describe ProjectType, type: :model do
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:project_type)).to be_valid
    end

    it { should validate_presence_of(:name) }
  end

  describe "associations" do
    #it { should have_many(:projects) }
    it { should have_many(:fields) }
  end
end
