class CreateLmsItemMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_item_media do |t|
      t.integer :item_id
      t.string :medium_id
      t.integer :numbder, default: 0
      t.string  :description, default: ""

      t.timestamps
    end
  end
end
