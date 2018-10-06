class CreateLmsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_items do |t|
      t.string :title
      t.string :description, default: ""

      t.timestamps
    end
  end
end
