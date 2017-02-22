class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'hstore'

    create_table :projects do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.string :full_address
      t.hstore :properties
      t.text :description
      t.references :project_type, foreign_key: true

      t.timestamps
    end
  end
end
