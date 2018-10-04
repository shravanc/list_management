class CreateLmsMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_media do |t|
      t.string :title
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
