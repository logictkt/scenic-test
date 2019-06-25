class ActiveUser < ApplicationRecord
  include UserConcern
  include Readonly
end
