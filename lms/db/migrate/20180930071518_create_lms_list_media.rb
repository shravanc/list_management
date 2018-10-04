class CreateLmsListMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_list_media do |t|
      t.integer :list_id
      t.integer :medium_id

      t.timestamps
    end
  end
end
