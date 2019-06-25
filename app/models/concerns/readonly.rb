module Readonly
  extend ActiveSupport::Concern

  def readonly?
    true
  end
end
