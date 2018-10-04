class CreateLmsItemMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_item_media do |t|
      t.integer :item_id
      t.string :medium_id

      t.timestamps
    end
  end
end
