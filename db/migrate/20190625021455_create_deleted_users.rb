class CreateDeletedUsers < ActiveRecord::Migration[5.2]
  def change
    create_view :deleted_users
  end
end
