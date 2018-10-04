class CreateLmsItemLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_item_layouts do |t|
      t.integer :item_id
      t.integer :layout_id

      t.timestamps
    end
  end
end
