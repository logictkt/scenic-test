class ActiveUser < ApplicationRecord
  include UserConcern

  def readonly?
    true
  end
end
