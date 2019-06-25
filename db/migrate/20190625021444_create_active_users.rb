class CreateActiveUsers < ActiveRecord::Migration[5.2]
  def change
    create_view :active_users
  end
end
