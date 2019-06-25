class User < ApplicationRecord
  enum status: { active: 0, deleted: 99 }

  validates :name, presence: true

  has_one :notification_setting
end
