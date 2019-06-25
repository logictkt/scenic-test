# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  status     :integer          default("active"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  enum status: { active: 0, deleted: 99 }

  validates :name, presence: true

  has_one :notification_setting

  def notice_enabled?
    notification_setting.blank? || notification_setting.enabled
  end
end
