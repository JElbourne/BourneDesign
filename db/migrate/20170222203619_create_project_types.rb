class CreateProjectTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :project_types do |t|
      t.string :name

      t.timestamps
    end
    add_index :project_types, :name
  end
end
