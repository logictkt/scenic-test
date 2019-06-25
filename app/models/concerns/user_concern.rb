module UserConcern
  extend ActiveSupport::Concern

  included do
    enum status: { active: 0, deleted: 99 }
    self.primary_key = :id
  end

  module ClassMethods
    def self.users
      User.where(id: ids)
    end
  end

  def user
    User.find(id)
  end

  def notice_enabled?
    notification_setting.blank? || notification_setting.enabled
  end
end
