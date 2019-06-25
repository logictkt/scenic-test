# == Schema Information
#
# Table name: notification_settings
#
#  id         :bigint           not null, primary key
#  enabled    :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_notification_settings_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class NotificationSetting < ApplicationRecord
  belongs_to :user
end
