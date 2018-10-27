class CreateLmsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_items do |t|
      t.string :title
      t.string :description, default: ""
      t.string :slug

      t.timestamps
    end
  end
end
