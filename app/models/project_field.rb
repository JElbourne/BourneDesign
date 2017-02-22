class ProjectField < ApplicationRecord
  belongs_to :project_type

  validates_presence_of :name
  validates_presence_of :field_type
  validates_presence_of :unit
  validates_presence_of :project_type_id
end
