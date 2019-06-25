class CreateNotificationSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :notification_settings do |t|
      t.belongs_to :user, null: false, index: true, foreign_key: true
      t.boolean :enabled, null: false, default: true
      t.timestamps
    end
  end
end
