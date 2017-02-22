class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.text :attachment_data
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
