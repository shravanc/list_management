class CreateLmsLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_layouts do |t|
      t.string :title, default: ""
      t.string :description, default: ""
      t.integer :limit, default: 0
      t.timestamps
    end
  end
end
