module UserConcern
  extend ActiveSupport::Concern

  module ClassMethods
    def self.users
      User.where(id: ids)
    end
  end

  def user
    User.find(id)
  end
end
