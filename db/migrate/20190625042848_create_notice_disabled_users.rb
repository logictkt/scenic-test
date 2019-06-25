class CreateNoticeDisabledUsers < ActiveRecord::Migration[5.2]
  def change
    create_view :notice_disabled_users
  end
end
