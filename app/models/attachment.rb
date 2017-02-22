class Attachment < ApplicationRecord
  belongs_to :project

  validates_presence_of :attachment_data
  validates_presence_of :project_id
end
