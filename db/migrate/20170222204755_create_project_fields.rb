class CreateProjectFields < ActiveRecord::Migration[5.0]
  def change
    create_table :project_fields do |t|
      t.string :name
      t.string :field_type
      t.string :unit
      t.boolean :required
      t.text :description
      t.text :icon_data
      t.references :project_type, foreign_key: true

      t.timestamps
    end
  end
end
