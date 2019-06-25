class CreateNoticeActiveUsers < ActiveRecord::Migration[5.2]
  def change
    create_view :notice_active_users
  end
end
