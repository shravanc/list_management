class CreateLmsAppLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_app_lists do |t|
      t.integer :app_id
      t.integer :list_id
      t.integer :number, default: 0
      t.integer :app_lists_count

      t.timestamps
    end
  end
end
