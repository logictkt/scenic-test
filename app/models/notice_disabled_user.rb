# == Schema Information
#
# Table name: notice_disabled_users
#
#  id         :bigint           default(0), not null
#  name       :string(255)      not null
#  status     :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NoticeDisabledUser < ApplicationRecord
  include UserConcern
  include Readonly
end
