class User < ApplicationRecord
  enum status: { active: 0, deleted: 99 }

  validates :name, presence: true

  has_one :notification_setting

  def notice_enabled?
    notification_setting.blank? || notification_setting.enabled
  end
end
