class CreateLmsItemLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_item_lists do |t|
      t.integer :item_id
      t.integer :list_id
      t.integer :numbder, default: 0
      t.integer :item_lists_count

      t.timestamps
    end
  end
end
