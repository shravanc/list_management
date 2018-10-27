class CreateLmsCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_collections do |t|
      t.integer :list_id
      t.integer :sublist_id
      t.integer :number

      t.timestamps
    end
  end
end
