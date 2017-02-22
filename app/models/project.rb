class Project < ApplicationRecord
  belongs_to :project_type

  validates_presence_of :full_name
  validates_presence_of :phone
  validates_presence_of :email
  validates_presence_of :full_address
  validates_presence_of :project_type_id
end
