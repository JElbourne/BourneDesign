class ProjectType < ApplicationRecord
  #has_many :projects
  #has_many :fields

  validates_presence_of :name
end
