# == Schema Information
#
# Table name: notice_active_users
#
#  id         :bigint           default(0), not null
#  name       :string(255)      not null
#  status     :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NoticeActiveUser < ApplicationRecord
  include UserConcern
  include Readonly

  has_one :notification_setting, foreign_key: :user_id
end
