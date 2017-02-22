require 'rails_helper'

RSpec.describe Attachment, type: :model do
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:attachment)).to be_valid
    end

    it { should validate_presence_of(:attachment_data) }
    it { should validate_presence_of(:project_id) }
  end

  describe "associations" do
    it { should belong_to(:project) }
  end
end
