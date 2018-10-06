class CreateLmsApps < ActiveRecord::Migration[5.2]
  def change
    create_table :lms_apps do |t|
      t.string :title
      t.string :auth_token

      t.timestamps
    end
  end
end
