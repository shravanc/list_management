class CreateLmsMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_media do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :media_type
      t.string :slug

      t.timestamps
    end
  end
end
