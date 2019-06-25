class DeletedUser < ApplicationRecord
  include UserConcern

  def readonly?
    true
  end
end
