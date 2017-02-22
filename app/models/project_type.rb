class ProjectType < ApplicationRecord
  has_many :fields, class_name: "ProjectField"
  #has_many :projects

  accepts_nested_attributes_for :fields, allow_destroy: true

  validates_presence_of :name
end
